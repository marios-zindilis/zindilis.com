<!-- -
Title: set system host-name (Juniper Command)
Description: Notes on the 'set system host-name' command on Juniper devices
Author: Marios Zindilis
First Published: 2014-01-05
- -->

<ol class="breadcrumb" itemprop="breadcrumb">
	<li><a href="/">Home</a></li>
	<li><a href="/docs/">Docs</a></li>
	<li><a href="/docs/juniper/">Juniper</a></li>
	<li><a href="/docs/juniper/set-system-host-name.html">set system host-name (Juniper Command)</a></li>
</ol>

`set system host-name` (Juniper Command)
========================================

The `set system host-name` command defines the name of the device, as 
displayed (among other places) in the command prompt. For example:

    marios@juniper> configure
    marios@juniper# set system host-name router-4
    marios@juniper# commit
    commit complete
    marios@router-4#

Cisco Equivalent
----------------

The Cisco equivalent of the `set system host-name` command is: 

    cisco# hostname router-5

See also
--------

*    [`hostname`](/docs/cisco/hostname.html), the Cisco equivalent
