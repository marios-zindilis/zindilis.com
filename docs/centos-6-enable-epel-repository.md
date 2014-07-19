<!-- -
Title: Enable EPEL Repository on CentOS 6
Description: How to enable the EPEL repository on CentOS 6
First Published: 2013-12-19
- -->

<ol class="breadcrumb" itemprop="breadcrumb">
	<li><a href="/">Home</a></li>
	<li><a href="/docs/">Docs</a></li>
	<li><a href="/docs/centos-6-enable-epel-repository.html">Enable EPEL Repository on CentOS 6</a></li>
</ol>

Enable EPEL Repository on CentOS 6
==================================

The most updated information for enabling EPEL should always be at the 
[Fedora Project's Wiki](http://fedoraproject.org/wiki/EPEL).

In that page's section "How can I use these extra packages?", there are links 
to the latest versions for CentOS 6 (and CentOS 5).

In that page, download the `.noarch` file, for example:

    wget http://www.mirrorservice.org/sites/dl.fedoraproject.org/pub/epel/6/i386/epel-release-6-8.noarch.rpm

Then, install with `yum`:

    yum install epel-release-*.noarch
