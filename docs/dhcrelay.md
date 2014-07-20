<!-- -
Title: dhcrelay
Description: DHCP relay dhcrelay
First Published: 2013-12-31
- -->

<ol class="breadcrumb" itemprop="breadcrumb">
	<li><a href="/">Home</a></li>
	<li><a href="/docs/">Docs</a></li>
	<li><a href="/docs/dhcrelay.html">dhcrelay</a></li>
</ol>

`dhcrelay`
==========

`dhcrelay` acts as a proxy between DHCP clients and a DHCP server, when 
those are separated by a router, which by default blocks broadcasted 
DHCP requests. It makes sense to install this on a router between two 
subnets, only one of which has a DHCP server, or on a relay system, 
again between two subnets.
