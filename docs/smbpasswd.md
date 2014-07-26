<!-- -
Title: smbpasswd
First Published: 2013-10-25
- -->

<ol class="breadcrumb" itemprop="breadcrumb">
	<li><a href="/">Home</a></li>
	<li><a href="/docs/">Docs</a></li>
	<li><a href="/docs/smbpasswd.html">smbpasswd</a></li>
</ol>

smbpasswd
=========

`smbpasswd` is the Samba equivalent of the system's `passwd`, it allows 
for the management of Samba user accounts.

Add a user
----------
To add a user, use `smbpasswd` with the `-a` option, and the username as 
the only required parameter, e.g:

    smbpasswd -a obiwan

The very first time that you will run `smbpasswd` it will warn that a 
user database does not yet exist. This is normal, and `smbpasswd` will 
generate that database.

Change a password
-----------------
Users can change their own passwords, and root can change any other 
user's password. If the Samba server authenticates users against a 
remote server, the server can be defined with the `-r` option.

For example, when used with a local user database (i.e. in conjunction 
with a `security = User` setting in `[Global]`), a user can change 
their password with just:

    obiwan@server ~ $ smbpasswd

