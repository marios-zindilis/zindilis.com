<!-- -
Title: route
First Published: 2014-03-07
- -->

<ol class="breadcrumb" itemprop="breadcrumb">
	<li><a href="/">Home</a></li>
	<li><a href="/docs/">Docs</a></li>
	<li><a href="/docs/route.html">route</a></li>
</ol>

`route`
=======

Add route to specific network:

    route add -net 1.2.3.0 netmask 255.255.255.0 dev eth0

Add default gateway:

    route add default gw 1.2.3.4 eth0
