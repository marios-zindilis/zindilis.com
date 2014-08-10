<!-- -
Title: enable secret
Description: Notes on the 'enable secret' command on Cisco devices
First Published: 2014-01-02
- -->

`enable secret`
===============

The `enable secret` command makes the device ask for a password to allow 
the user to enter the global configuration mode. Compared to `enable 
password`, it has the advantage that it stores the password in the 
configuration as an MD5 hash, as opposed to clear text.

See also
--------

*    <a href='/docs/cisco/enable-password.html'><code>enable password</code></a>
