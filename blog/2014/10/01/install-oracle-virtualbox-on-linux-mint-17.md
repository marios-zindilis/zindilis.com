<!-- -
Title: Install Oracle Virtualbox on Linux Mint 17
Description: How to install the closed source version of Oracle Virtualbox on Linux Mint 17
First Published: 2014-10-01
- -->

Install Oracle Virtualbox on Linux Mint 17
==========================================

This is a quick tip on how to install the closed-source version of Virtualbox, 
currently at version 4.3.16, on a machine with Linux Mint 17. The open-source 
version of Virtualbox is available in the default repositories for Linux Mint, 
but the version offered at the Virtualbox website itself is newer, and in fact 
easier to install.

So, here we go:

1.  Remove previously installed Virtualbox packages:

        sudo apt-get purge virtualbox*

2.  Install dependencies:

        sudo apt-get install dkms
        sudo apt-get install linux-headers-`uname -r`

3.  Download Virtualbox from [Virtualbox Downloads](https://www.virtualbox.org/wiki/Linux_Downloads).

4.  Install with `dpkg` (note that the filename might be different): 

        sudo dpkg -i Downloads/virtualbox-4.3.deb
