<!-- -
Title: Juniper Acronyms
Description: A list of Juniper-Networks-related acronyms
First Published: 2013-11-04
Last Updated: 2014-02-24
- -->

<ol class="breadcrumb" itemprop="breadcrumb">
	<li><a href="/">Home</a></li>
	<li><a href="/docs/">Docs</a></li>
	<li><a href="/docs/juniper/">Juniper</a></li>
	<li><a href="/docs/juniper/juniper-acronyms.html">Juniper Acronyms</a></li>
</ol>

Juniper Acronyms
================

This is a list of acronyms that I come across while reading Juniper 
documentation. Most should be Juniper-specific, but some may not.

<dl class='dl-horizontal'>
<!-- APIC: Application-Specific Integrated Circuit -->
<dt><abbr title='Application-Specific Integrated Circuit'>ASIC</abbr></dt>
<dd><b>A</b>pplication-<b>S</b>pecific <b>I</b>ntegrated <b>C</b>ircuit</dd>
<!-- BERT: Bit Error Rate Test -->
<dt><abbr title='Bit Error Rate Test'>BERT</abbr></dt>
<dd><b>B</b>it <b>E</b>rror <b>R</b>ate <b>T</b>est</dd>
<!-- dcd: Device Control Daemon -->
<dt><abbr title='Device Control Daemon'>dcd</abbr></dt>
<dd><b>D</b>evice <b>C</b>ontrol <b>D</b>aemon: One of the JUNOS daemons 
running on the Routing Engine. Handles configuration and maintenance of 
the interfaces.</dd>

<!-- FEB: Forwarding Engine Board -->
<dt><abbr title='Forwarding Engine Board'>FEB</abbr></dt>
<dd><b>F</b>orwarding <b>E</b>ngine <b>B</b>oard: a type of Switching 
Control Board, found on some devices like M5, M10.</dd>

<!-- FPC: Flexible PIC Concentrator -->
<dt><abbr title='Flexible PIC Concentrator'>FPC</abbr></dt>
<dd><b>F</b>lexible <b>P</b>IC <b>C</b>oncentrator, the component that 
joins multiple PICs on devices that require more than one. In the JUNOS 
interface naming convention <code>Type-FPC/PIC/Port.Unit</code>, the FPC 
is the first all-numeric component. For example, interface 
<code>fe-1/2/3</code> is on <b>FCP 1</b> on the device.</dd>

<!-- LDP: Label Distribution Protocol -->
<dt><abbr title='Label Distribution Protocol'>LDP</abbr></dt>
<dd><b>L</b>abel <b>D</b>istribution <b>P</b>rotocol. One of the 
sources of routes in the routing table, with a preference value of 9.</dd>

<!-- mgd: Management Daemon -->
<dt><abbr title='Management Daemon'>mgd</abbr></dt>
<dd><b>M</b>ana<b>g</b>ement <b>D</b>aemon: One of the JUNOS daemons 
running on the Routing Engine. Manages user access to the device.</dd>

<!-- MMB: Memory Mezzanine Board -->
<dt><abbr title='Memory Mezzanine Board'>MMB</abbr></dt>
<dd><b>M</b>emory <b>M</b>ezzanine <b>B</b>oard: a type of Switching 
Control Board found on some devices like the T320 and the T640. It is 
integrated in the <abbr title='Flexible PIC Concentrator'>FPC</abbr>.</dd>

<!-- MSDP: Multicast Source Discovery Protocol -->
<dt><abbr title='Multicast Source Discovery Protocol'>MSDP</abbr></dt>
<dd><b>M</b>ulticast <b>S</b>ource <b>D</b>iscovery <b>P</b>rotocol. 
One of the sources of routes in the routing table, with a preference 
value of 175.</dd>

<!-- PFE: Packet Forwarding Engine -->
<dt><abbr title='Packet Forwarding Engine'>PFE</abbr></dt>
<dd><b>P</b>acket <b>F</b>orwarding <b>E</b>ngine: the second part of the 
Control Plane / Forwarding Plane separation on Juniper devices. This part 
of the device is mostly hardware.</dd>

<!-- pfed: Packet Forwarding Engine Daemon -->
<dt><abbr title='Packet Forwarding Engine Daemon'>pfed</abbr></dt>
<dd><b>P</b>acket <b>F</b>orwarding <b>E</b>ngine <b>D</b>aemon: One of 
the JUNOS daemons running on the Routing Engine. Manages the 
communication between the Routing Engine and the Packet Forwarding 
Engine.</dd>

<!-- PIC: Physical Interface Card -->
<dt><abbr title='Physical Interface Card'>PIC</abbr></dt>
<dd><b>P</b>hysical <b>I</b>nterface <b>C</b>ard. Different types of 
PICs exist, to offer difference connectivity capabilities, for example 
there are <abbr title='Asynchronous Transfer Mode'>ATM</abbr> PICs, or 
<abbr title='Synchronous Digital Hierarchy'>SDH</abbr> PICs, which 
consequently contain different ASICs. In the JUNOS interface naming 
convention <code>Type-FPC/PIC/Port.Unit</code>, the PIC is the second 
all-numeric component. For example, interface <code>fe-1/2/3</code> is 
on <b>PIC 2</b> on the device.</dd>

<!-- PIM: Protocol Independent Multicast -->
<dt><abbr title='Protocol Independent Multicast'>PIM</abbr></dt>
<dd><b>P</b>rotocol <b>I</b>ndependent <b>M</b>ulticast. One of the 
sources of routes in the routing table, with a preference value of 105.</dd>

<!-- RE: Routing Engine -->
<dt><abbr title='Routing Engine'>RE</abbr></dt>
<dd><b>R</b>outing <b>E</b>ngine, the first part of the Control Plane / 
Forwarding Plane separation on Juniper devices. This part of the 
equation is mostly software. It contains the OS, and this is where the 
configuration takes place. Physically, it looks like a small PC, with a 
motherboard, processor, RAM and storage. Some devices have dual REs 
for redundancy.</dd>

<!-- RSVP: Resource Reservation Protocol -->
<dt><abbr title='Resource Reservation Protocol'>RSVP</abbr></dt>
<dd><b>R</b>esource Re<b>s</b>er<b>v</b>ation <b>P</b>rotocol. One of 
the sources or routes in the routing table, with a preference value of 
7.</dd>

<!-- rpd: Routing Protocol Daemon -->
<dt><abbr title='Routing Protocol Daemon'>rpd</abbr></dt>
<dd><b>R</b>outing <b>P</b>rotocol <b>D</b>aemon: One of the JUNOS 
daemons running on the Routing Engine. Handles exchange of routing 
messages, maintenance of routing table, enforcement of routing policies.</dd>

<!-- RPF: Reverse Path Forwarding -->
<dt><abbr title='Reverse Path Forwarding'>RPF</abbr></dt>
<dd><b>R</b>everse <b>P</b>ath <b>F</b>orwarding is the process used by 
Junos to populate the <code>inet.2</code> routing table, used by the 
router to prevent routing loops in multicast routing protocols.</dd>

<!-- SCB: System Control Board -->
<dt><abbr title='System Control Board'>SCB</abbr></dt>
<dd><b>S</b>ystem <b>C</b>ontol <b>B</b>oard: a type of Switching 
Control Board, found on some devices like the M40.</dd>

<!-- SFM: Switching and Forwarding Module -->
<dt><abbr title='Switching and Forwarding Module'>SFM</abbr></dt>
<dd><b>S</b>witching and <b>F</b>orwarding <b>M</b>odule: a type of 
Switching Control Board, designed so that devices will have two SFMs. 
Some devices, like the M40e, use the SFMs in Active/Passive mode, 
whereas others, like the M160, use both in Active/Active mode.</dd>

<!-- SSB: System Switching Board -->
<dt><abbr title='System Switching Board'>SSB</abbr></dt>
<dd><b>S</b>ystem <b>S</b>witching <b>B</b>oard: a type of Switching 
Control Board, found on some devices line the M20. It is designed so 
that devices will contains two SSBs, in Active/Passive redundancy.</dd>

<!-- SSRAM: Synchronized Static Random Access Memory -->
<dt><abbr title='Synchronized Static Random Access Memory'>SSRAM</abbr></dt>
<dd><b>S</b>ynchronized <b>S</b>tatic <b>R</b>andom <b>A</b>ccess 
<b>M</b>emory. It is a component of the Switching Control Board, and it 
contains the routing table, pushed to it by the Routing Engine.</dd>

<!-- SCB: Switching Control Board -->
<dt><abbr title='Switching Control Board'>SCB</abbr></dt>
<dd><b>S</b>witching <b>C</b>ontrol <b>B</b>oard. This is the heart of 
the Packet Forwarding Engine. Similarly to the Routing Engine, it 
contains a processor and RAM, but the purpose of those are to coordinate 
the operation of the rest of the components of the PFE, rather than 
actually participating in routing/forwarding decisions.</dd>
<dt><abbr title='Traffic Engineering Database'>TED</abbr></dt>
<dd><b>T</b>raffic <b>E</b>ngineering <b>D</b>atabase</dd>
</dl>
