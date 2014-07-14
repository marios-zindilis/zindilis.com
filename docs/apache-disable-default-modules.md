<!-- -
Title: Disabling Apache Default Modules
Description: Which default Apache modules can be disabled
Author: Marios Zindilis
First Published: 2013-11-12
Last Updated: 2014-03-16
- -->

<ol class="breadcrumb" itemprop="breadcrumb">
	<li><a href="/">Home</a></li>
	<li><a href="/docs/">Docs</a></li>
	<li><a href="/docs/apache-disable-default-modules.html">Disabling Apache Default Modules</a></li>
</ol>

Disabling Apache Default Modules
================================
With a default installation of Apache running, a set of modules are 
configured to load automatically, to serve what the server's and the 
distribution's developers evaluated to be the most common needs. These 
modules can be (and probably should be) disabled on a production web 
server. This might save a very tiny bit of memory for each module, and 
also can improve security, in case a vulnerability exists in one of the 
loaded but unused modules.

In CentOS, you can see which modules are loaded on a running instance 
of Apache, with:

    httpd -M

`mod_proxy` and related proxy modules
---------------

The `mod_proxy` and its related modules add the capability to use Apache 
as a proxy server in front of other Web servers, as well as in front of 
FTP servers, application servers, FastCGI servers, and other types of 
servers specified by loading additional modules.

These are not necessary in a setup where Apache is used as a standalone 
Web server. You can disable these features by commenting out the lines:

    LoadModule proxy_module modules/mod_proxy.so
    LoadModule proxy_balancer_module modules/mod_proxy_balancer.so
    LoadModule proxy_ftp_module modules/mod_proxy_ftp.so
    LoadModule proxy_http_module modules/mod_proxy_http.so
    LoadModule proxy_ajp_module modules/mod_proxy_ajp.so
    LoadModule proxy_connect_module modules/mod_proxy_connect.so


The `mod_proxy_ajp` module provides the ability to proxy HTTP requests 
coming to the web server to an application server. It is commonly used 
together with Apache Tomcat. Read more about the [Apache Module `mod_proxy_ajp`](http://httpd.apache.org/docs/current/mod/mod_proxy_ajp.html).

`mod_substitute`
------------

The `substitute` module allows for sed-like regex-based string 
substitutions in HTTP responses. To disable it, comment out the line:

    LoadModule substitute_module modules/mod_substitute.so

Read more about the [Apache Module `mod_substitute`](http://httpd.apache.org/docs/current/mod/mod_substitute.html)

`mod_userdir`
---------
Module `userdir` is used to serve web content from inside users' home 
directories, and it is loaded but deactivated (with the `UserDir 
disabled` directive) by default on CentOS 6. To unload it permanently, 
edit `/etc/httpd/conf/httpd.conf`, and comment out the line:

    LoadModule userdir_module modules/mod_userdir.so
