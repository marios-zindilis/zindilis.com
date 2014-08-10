<!-- -
Title: /etc/lilo.conf
Description: Notes on LILO configuration file /etc/lilo.conf
First Published: 2014-01-05
- -->

<ol class="breadcrumb" itemprop="breadcrumb">
    <li><a href="/">Home</a></li>
    <li><a href="/docs/">Docs</a></li>
    <li><a href="/docs/lfs/">Linux Filesystem</a></li>
    <li><a href="/docs/lfs/etc/">etc</a></li>
    <li><a href="/docs/lfs/etc/lilo.conf.html">lilo.conf</a></li>
</ol>

`/etc/lilo.conf`
================

The LILO bootloader has long been deprecated, in favour of GRUB, 
however it still has an install base on old systems that remain in 
production. The `/etc/lilo.conf` file contains its configuration. After 
any change in that file, it is necessary to reinstall LILO, by simply 
running `lilo`.

Each installed kernel version will have a line in this file, beginning 
with `image=`, followed by the path to the kernel file. For example:

    image=/boot/bzImage-2.6.28
