<!-- -
Title: alias (Cisco command)
Description: Notes on the alias command on Cisco devices
First Published: 2013-12-29
Last Updated: 2014-01-19
- -->

<ol class='breadcrumb' itemprop='breadcrumb'>
	<li><a href="/">Home</a></li>
	<li><a href="/docs/">Docs</a></li>
	<li><a href="/docs/cisco/">Cisco</a></li>
	<li><a href="/docs/cisco/alias.html">alias</a></li>
</ol>

`alias` (Cisco command)
=======================

Example: 

    cisco(config)#alias exec save copy running-config startup-config

The example above will make the word `save` an alias of the longer 
command `copy running-config startup-config`. The general form of the 
command is:

    alias MODE ALIAS COMMAND
