#!/bin/sh

# Run this with:
# 
#    wget https://zindilis.com/code/deploy-ubuntu-15.10-bastion.sh
#    bash deploy-ubuntu-15.10-bastion.sh

apt-get update;
apt-get --yes upgrade;
apt-get --yes dist-upgrade;
apt-get --yes install vim git nmap whois screen python3-pip;
sudo timedatectl set-timezone Europe/Dublin

# Install iptables plugin for Netfilter and configure iptables for bastion:
apt-get --yes install iptables-persistent;
service netfilter-persistent flush;
iptables --append        INPUT               \
         --match         state               \
         --state         ESTABLISHED,RELATED \
         --jump          ACCEPT
iptables --append        INPUT               \
         --in-interface  lo                  \
         --jump          ACCEPT
iptables --append        INPUT               \
         --protocol      icmp                \
         --jump          ACCEPT
iptables --append        INPUT               \
         --match         state               \
         --state         NEW                 \
         --protocol      tcp                 \
         --dport         22                  \
         --jump          ACCEPT
iptables --policy        INPUT DROP
service netfilter-persistent save;

if [ ! -f '/root/00-task-deploy' ]
then
    touch '/root/00-task-deploy'
    touch '/root/01-task-security-stuff'
    touch '/root/02-task-set-hostname'
fi

if [ -f '/root/01-task-security-stuff' ]
then
    # Non-root user:
    echo -n 'Create new user: ';
    read user_name;
    adduser $user_name;
    echo "$user_name    ALL=(ALL:ALL) ALL" >> /etc/sudoers
    wget -O /home/$user_name/.vimrc https://zindilis.com/code/vimrc
    chown $user_name:$user_name /home/$user_name/.vimrc
    sed -i 's/PermitRootLogin yes/PermitRootLogin no/' /etc/ssh/sshd_config;
    # 2FA:
    apt-get --yes install libpam-google-authenticator
    sed -i 's/ChallengeResponseAuthentication no/ChallengeResponseAuthentication yes/' /etc/ssh/sshd_config
    echo 'auth required pam_google_authenticator.so' >> /etc/pam.d/sshd;
    su - $user_name -c 'google-authenticator'
    mv '/root/01-task-security-stuff' '/root/01-done-security-stuff';
    # fail2ban:
    apt-get --yes install fail2ban
    cp /etc/fail2ban/jail.conf /etc/fail2ban/jail.local
    echo '[sshd]' > /etc/fail2ban/jail.d/sshd.conf
    echo 'enabled = true' >> /etc/fail2ban/jail.d/sshd.conf
    echo 'maxretry = 3' >> /etc/fail2ban/jail.d/sshd.conf
    echo 'findtime = 3600' >> /etc/fail2ban/jail.d/sshd.conf
    echo 'bantime = 600' >> /etc/fail2ban/jail.d/sshd.conf
    service fail2ban restart
fi

if [ -f '/root/02-task-set-hostname' ]
then
    echo -n "Set hostname: "
    read host_name
    echo "$host_name" > /etc/hostname
    echo "127.0.0.1 $host_name" >> /etc/hosts
    mv '/root/02-task-set-hostname' '/root/02-done-set-hostname';
fi

echo "Done! Press Enter to reboot..";
read;
mv '/root/00-task-deploy' '/root/00-done-deploy'
reboot
