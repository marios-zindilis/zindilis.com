<!-- -
Title: Back-Pressure on Cisco Switches
Description: The back-pressure feature on Cisco switches
First Published: 2013-11-08
Last Updated: 2013-12-29
Author: Marios Zindilis
- -->

<ol class="breadcrumb" itemprop='breadcrumb'>
	<li><a href="/">Home</a></li>
	<li><a href="/docs/">Docs</a></li>
	<li><a href="/docs/cisco/">Cisco</a></li>
	<li><a href="/docs/cisco/back-pressure.html">back-pressure</a></li>
</ol>

Back-Pressure on Cisco Switches
===============================

The `back-pressure` feature on Cisco switches is a workaround to the 
inability to apply proper flow control on half-duplex links. It causes 
the Cisco switch to send fake packets on the link, thus controlling the 
transmission from the remote side, since only one side can send at a 
time on a half-duplex link.
