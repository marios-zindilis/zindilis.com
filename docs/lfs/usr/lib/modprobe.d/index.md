<!-- -
Title: /usr/lib/modprobe.d/
First Published: 2014-07-12
Last Updated: 2014-07-13
- -->

<ol class="breadcrumb" itemprop="breadcrumb">
    <li><a href="/">Home</a></li>
    <li><a href="/docs/">Docs</a></li>
    <li><a href="/docs/lfs/">Linux Filesystem</a></li>
    <li><a href="/docs/lfs/usr/">usr</a></li>
    <li><a href="/docs/lfs/usr/lib/">lib</a></li>
    <li><a href="/docs/lfs/usr/lib/modprobe.d/">modprobe.d</a></li>
</ol>


/usr/lib/modprobe.d/
====================

On CentOS and probably other RedHat-based distributions, `/usr/lib/modprobe.d/` 
is the directory that contains configuration for loading kernel modules and 
defining module aliases and module blacklists, as these configurations are 
shipped by packages, as opposed to host-specific configurations that go in 
[/etc/modprobe.d/](/docs/lfs/etc/modprobe.d/).

Module configurations from both directories are read by default, unless 
[dracut](/docs/dracut.html) is run in *generic* mode.

See also
--------

*   [dracut](/docs/dracut.html)
*   [/etc/modprobe.d/](/docs/lfs/etc/modprobe.d/)
