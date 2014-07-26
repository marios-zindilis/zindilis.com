<!-- -
Title: Install packages from RHEL DVD with yum
Description: How to install packages from the RHEL DVD with yum
First Published: 2014-03-31
- -->

<ol class="breadcrumb" itemprop="breadcrumb">
	<li><a href="/">Home</a></li>
	<li><a href="/docs/">Docs</a></li>
	<li><a href="/docs/rhel-yum-install-from-dvd.html">Install packages from RHEL DVD with yum</a></li>
</ol>

Install packages from RHEL DVD with yum
=======================================

There are a lot of packages available on the RedHat Enterprise Linux 
Installation DVD (I count 3764 `.rpm` files on version 6.5 Beta), and 
you can use the DVD as a repository to install them with `yum`. To do 
that:

1.  First you need access to the files on the DVD. If the disk is 
    inserted in a physical DVD drive on your system, you can mount it 
    with:

        mkdir /media/rhel
        mount /dev/cdrom /media/rhel

    Or, if you have the `.iso` file locally on the system, you can 
    mount that instead:

        mkdir /media/rhel
        mount -o loop /root/rhel.iso /media/rhel

2.  Next, you need to create a Yum repository pointing to the mounted 
    disk. To do that, create a new `.repo` file in the 
    `/etc/yum.repos.d/` directory:

        vi /etc/yum.repos.d/rhel-media.repo

    ...and populate it with the following lines:

        [rhel-media]
        name=rhel-media
        baseurl=file:///media/rhel
        gpgcheck=1
        enabled=1
        gpgfile=file:///media/rhel/RPM-GPG-KEY-redhat-release

    If you don't remember the configuration lines listed above,  you 
    can peak at other `.repo` files in `/etc/yum.repos.d/`.

You can then install packages, for example `httpd` with simply doing:

    yum install httpd

You can also verify that the DVD is the source for that package with:

    yum info  httpd | grep Repo
    Repo        : rhel-media
