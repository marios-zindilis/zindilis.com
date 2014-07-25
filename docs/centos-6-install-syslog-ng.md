<!-- -
Title: Installation of syslog-ng on CentOS 6
Description: How to install syslog-ng on CentOS 6
First Published: 2014-03-11
- -->

<ol class="breadcrumb" itemprop="breadcrumb">
	<li><a href="/">Home</a></li>
	<li><a href="/docs/">Docs</a></li>
	<li><a href="/docs/centos-6-install-syslog-ng.html">Installation of syslog-ng on CentOS 6</a></li>
</ol>

Installation of `syslog-ng` on CentOS 6
=======================================

1.  Enable EPEL
2.  yum install -y syslog-ng
3.  Configure /etc/syslog-ng/syslog-ng.conf
4.  `chkconfig syslog-ng on`
5.  `chkconfig rsyslog off`
6.  `service rsyslog stop`
7.  `service syslog-ng start`
