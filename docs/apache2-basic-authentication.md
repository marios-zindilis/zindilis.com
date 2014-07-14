<!-- -
Title: Basic Authentication with Apache 2
Description: Basic authentication with Apache 2
First Published: 2013-11-12
Last Updated: 2013-11-12
- -->

<ol class="breadcrumb" itemprop="breadcrumb">
	<li><a href="/">Home</a></li>
	<li><a href="/docs/">Docs</a></li>
	<li><a href="/docs/apache2-basic-authentication.html">Basic Authentication with Apache 2</a></li>
</ol>

Basic authentication with Apache 2
==================================

To enable **basic authentication** with Apache 2:

1.  Create a set of credentials for the user, using `htpasswd`. The 
    syntax is:

        htpasswd /path/to/htpasswd/file username

    If the `htpasswd` file does not exist yet, pass the additional 
    option `-c` to create it. For example:

        htpasswd /etc/httpd/htpasswd marios

2.  Enter the user password twice. This will create an entry in that 
    file, with a set of credentials, e.g:

        [marios@centos6 ~]$ grep marios /etc/httpd/htpasswd 
        marios:3RoxtKn6QL9Uw

3.  Basic authentication can be applied to a directory on the web 
    server and its subdirectories with the `Directory` Apache directive, 
    or to a URL and whatever follows it, with the `Location` directove. 
    To apply it to a directory, add to your Apache configuration 
    something like:

        <Directory /var/www/html/protected>
            AuthName "Protected"
            AuthType Basic
            AuthUserFile /etc/httpd/htpasswd
            Require user marios
        </Directory>

    If you have multiple users, you can specify `Require valid-user`, 
    in which case all users with credentials in the `AuthUserFile` 
    will be allowed to login.

Optionally, you can further secure that specific directory or location 
with an `AllowFrom` directive, and restrict the ranges of IP addresses 
from which the directory or location will be accessible.


See Also
--------

*   [Apache Web Login Authentication](http://www.yolinux.com/TUTORIALS/LinuxTutorialApacheAddingLoginSiteProtection.html), 
    a tutorial with many Apache authentication examples, including Basic.
