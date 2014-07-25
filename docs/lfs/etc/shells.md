<!-- -
Title: /etc/shells
First Published: 2014-03-11
- -->

<ol class="breadcrumb" itemprop="breadcrumb">
    <li><a href="/">Home</a></li>
    <li><a href="/docs/">Docs</a></li>
    <li><a href="/docs/lfs/">Linux Filesystem</a></li>
    <li><a href="/docs/lfs/etc/">etc</a></li>
    <li><a href="/docs/lfs/etc/shells.html">shells</a></li>
</ol>

`/etc/shells`
=============

The `/etc/shells` file is a list of valid shells on the system. 

Example from an Ubuntu 12.10 Desktop system:

    # /etc/shells: valid login shells
    /bin/sh
    /bin/dash
    /bin/bash
    /bin/rbash
    /usr/bin/screen

Example from a CentOS 6 minimal server:

    /bin/sh 
    /bin/bash
    /sbin/nologin
    /bin/dash
