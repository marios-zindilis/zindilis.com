<!-- -
Title: /etc/hosts.allow
Author: Marios Zindilis
First Published: 2013-10-25
Last Updated: 2014-01-15
- -->

<ol class="breadcrumb" itemprop="breadcrumb">
    <li><a href="/">Home</a></li>
    <li><a href="/docs/">Docs</a></li>
    <li><a href="/docs/lfs/">Linux Filesystem</a></li>
    <li><a href="/docs/lfs/etc/">etc</a></li>
    <li><a href="/docs/lfs/etc/hosts.allow.html">hosts.allow</a></li>
</ol>

`/etc/hosts.allow`
==================

File `/etc/hosts.allow` is one of the configuration files of **TCP 
Wrappers**, effective either to servers launched via a superserver 
such as `inetd`, or to servers that use `libwrap` such as the OpenSSH 
server (when compiled with `--with-libwrap`, which is usually the 
default).

The general syntax of the file is:

    server: hosts

The `hosts` is a comma separated list, that can include full IP 
addresses, partial IP addresses, IP subnets in CIDR notation, 
FQDNs, or domains. For example, the following line limits access to the 
`sshd` server to a single host specified by IP, and to a subnet:

    sshd: 8.8.8.1 10.1.0.0/24

Note that in order for any definitions in `/etc/hosts.allow` to be 
effective, the rest of the hosts **need to be prohibited** in 
`/etc/hosts.deny`. Since `/etc/hosts.allow` takes precedence, it is safe 
to disallow every host in `/etc/hosts.deny` and only selectively allow 
specific access to the server in `/etc/hosts.allow`. To deny all hosts 
except those specified in `/etc/hosts.allow`, add in `/etc/hosts.deny`:

    sshd: ALL
