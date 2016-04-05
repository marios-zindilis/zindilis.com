#!/bin/bash

# Script to run after a fresh installation of Ubuntu 16.04 on my laptop.

# Contents of "partner" repository at: http://archive.canonical.com/pool/partner/
sudo add-apt-repository "deb http://archive.canonical.com/ $(lsb_release -sc) partner"
sudo apt-get update
sudo apt-get upgrade --yes

sudo apt-get install --yes skype
sudo apt-get install --yes ubuntu-restricted-extras vlc
sudo apt-get install --yes libgtk2.0-0:i386
sudo apt-get install --yes tlp tlp-rdw
sudo apt-get install --yes encfs
sudo apt-get install --yes vim
sudo apt-get install --yes git
sudo apt-get install --yes pylint
sudo apt-get install --yes apache2
sudo apt-get install --yes mysql-server 
sudo apt-get install --yes php5-mysql
sudo apt-get install --yes php5 libapache2-mod-php5 php5-mcrypt
sudo apt-get install --yes chromium-browser
sudo apt-get install --yes python-setuptools
sudo apt-get install --yes python-pip
sudo apt-get install --yes python3-pip

gsettings set com.canonical.Unity.Lenses remote-content-search "'none'"
