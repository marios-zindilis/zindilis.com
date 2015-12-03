#!/bin/bash

# This script prepares a newly spawned Ubuntu 14.04 VPS for usage.

if [ $(id -u) -ne 0 ]
then
    echo "This should be run as root."
    exit 1
fi

LOCKFILE=/root/bootstrap-system

if [ ! -f $LOCKFILE ]
then
    cd
    touch $LOCKFILE
    sudo apt-get update
    sudo apt-get --yes upgrade
    sudo apt-get --yes dist-upgrade
    echo -n "Create new user: "
    read user_name
    adduser $user_name
    echo "$user_name    ALL=(ALL:ALL) ALL" >> /etc/sudoers
    echo -n "Set hostname: "
    read host_name
    echo "$host_name" > /etc/hostname
    echo "127.0.0.1 $host_name" >> /etc/hosts
    sudo timedatectl set-timezone Europe/Dublin
    wget -O /home/$user_name/.vimrc https://zindilis.com/code/vimrc
    reboot
else
    cd
    sudo rm $LOCKFILE
    # Security stuff
    sed -i 's/PermitRootLogin yes/PermitRootLogin no/' /etc/ssh/sshd_config
    sudo apt-get --yes install iptables-persistent
    sudo ln -s /etc/init.d/iptables-persistent /etc/init.d/iptables
    echo -n 'IP of Bastion Host: '
    read bastion_host
    sudo iptables                           \
        --append        INPUT               \
        --match         state               \
        --state         ESTABLISHED,RELATED \
        --jump          ACCEPT
    sudo iptables                           \
        --append        INPUT               \
        --in-interface  lo                  \
        --jump          ACCEPT
    sudo iptables                           \
        --append        INPUT               \
        --protocol      icmp                \
        --jump          ACCEPT
    sudo iptables                           \
        --append        INPUT               \
        --match         state               \
        --state         NEW                 \
        --protocol      tcp                 \
        --source        $bastion_host       \
        --dport         22                  \
        --jump          ACCEPT
    sudo iptables                           \
        --policy        INPUT DROP
    sudo service iptables save
    # Install useful utilities:
    sudo apt-get --yes install vim nmap whois
    sudo apt-get autoremove
    sudo apt-get autoclean
    sudo apt-get clean
fi
