<!-- -
Title: Set up an FTP Repository from RHEL DVD
Description: How to configure an FTP accessible repository from the RHEL DVD
First Published: 2014-04-05
- -->

<ol class="breadcrumb" itemprop="breadcrumb">
	<li><a href="/">Home</a></li>
	<li><a href="/docs/">Docs</a></li>
	<li><a href="/docs/rhel-setup-ftp-repository.html">Set up an FTP Repository from RHEL DVD</a></li>
</ol>

Set up an FTP Repository from RHEL DVD
=======================================

<abbr title='RedHat Enterprise Linux'>RHEL</abbr> can be installed from 
various different sources. One of them is over the network, from an FTP 
accessible repository. Here's how to create such a repository:

1.  You will first need to install `vsftpd` from the RHEL DVD. See 
    [Install packages from RHEL DVD with yum](/docs/rhel-yum-install-from-dvd.html) 
    on how to do that.

2.  After you have installed `vsftpd`, enable it and start it:

        chkconfig vsftpd on
        service vsftpd start

    At this point, you should be able to open `ftp://localhost/` in 
    your web browser, from the same system on which you are working. 
    The contents in that page are those of the directory `/var/ftp/pub` 
    on the system.

3.  Create a directory for the repository:

        mkdir /var/ftp/pub/rhel

4.  Copy all the files from the DVD to the repository. Assuming that 
    either the DVD or the `.iso` image is mounted at `/media/rhel`:

        cp --recursive --archive /media/rhel/. /var/ftp/pub/rhel/

5.  Change the SELinux context of the files in the repository:

        chcon --recursive --reference=/var/ftp /var/ftp/pub/rhel/

6.  At this point the repository is only accessible from the system on 
    which it runs, since `iptables` by default does not allow FTP 
    traffic from other hosts. To open this access, edit your 
    `/etc/sysconfig/iptables` and add this line before the `COMMIT` 
    command:

        -A INPUT -m state --state NEW,ESTABLISHED -m tcp -p tcp --dport 21 -j ACCEPT
        -A OUTPUT -m state --state ESTABLISHED -m tcp -p tcp --sport 21 -j ACCEPT

    ...and reload the firewall:

        service iptables reload
