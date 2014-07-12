<!-- -
Title: exportfs
First Published: 2013-12-27
- -->

<ol class="breadcrumb" itemprop="breadcrumb">
	<li><a href="/">Home</a></li>
	<li><a href="/docs/">Docs</a></li>
	<li><a href="/docs/exportfs.html">exportfs</a></li>
</ol>

exportfs
========

`exportfs` is a helper utility for managing an NFS server.

Used without any parameters, it will just display a list of active 
exports, and the hosts that are allowed to access them.

Used with the `r` parameter, it will reread `/etc/exports`.
