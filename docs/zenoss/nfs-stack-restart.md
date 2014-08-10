<!-- -
Title: Restart entire NFS Stack
Description: How to restart the entire NFS stack
First Published: 2013-11-13
- -->

<ol class="breadcrumb" itemprop="breadcrumb">
	<li><a href="/">Home</a></li>
	<li><a href="/docs/">Docs</a></li>
	<li><a href="/docs/nfs-stack-restart.html">Restart entire NFS Stack</a></li>
</ol>

Restart entire NFS Stack
========================

    service nfs stop
    service nfslock stop
    service portmap stop
    service portmap start
    service nfslock start
    service nfs start
