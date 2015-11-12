sudo apt-get update
sudo apt-get upgrade
sudo apt-get dist-upgrade
sudo reboot

adduser marios
passwd marios
echo "marios ALL=(ALL:ALL) ALL" >> /etc/sudoers

# At this point, verify that user marios can SSH to the server and become root.

sed -i 's/PermitRootLogin yes/PermitRootLogin no/' /etc/ssh/sshd_config

# iptables / installation
sudo apt-get install iptables-persistent
# iptables / centos abstraction layer for ubuntu
sudo mkdir /etc/sysconfig/
sudo ln -s /etc/iptables/rules.v4 /etc/sysconfig/iptables
sudo ln -s /etc/init.d/iptables-persistent /etc/init.d/iptables
# iptables / rules
sudo iptables                               \
        --append        INPUT               \
        --match         state               \
        --state         ESTABLISHED,RELATED \
        --jump          ACCEPT
sudo iptables                               \
        --append        INPUT               \
        --in-interface  lo                  \
        --jump          ACCEPT
sudo iptables                               \
        --append        INPUT               \
        --match         state               \
        --state         NEW                 \
        --protocol      tcp                 \
        --dport         22                  \
        --jump          ACCEPT
sudo iptables                               \
        --policy        INPUT DROP
sudo service iptables save


################################################################################
# SSH Brute Force Protection with fail2ban
################################################################################
sudo apt-get install fail2ban
sudo cp /etc/fail2ban/jail.conf /etc/fail2ban/jail.local

################################################################################

sudo apt-get install git
sudo apt-get install jwhois
sudo apt-get install mailutils
