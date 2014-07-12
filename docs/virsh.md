<!-- -
Title: virsh
Description: Notes and links on virsh
First Published: 2014-04-09
- -->

<ol class="breadcrumb" itemprop="breadcrumb">
	<li><a href="/">Home</a></li>
	<li><a href="/docs/">Docs</a></li>
	<li><a href="/docs/virsh.html">virsh</a></li>
</ol>

`virsh`
=======

List all VMs:

        virsh list --all

Automatically boot a VM when the host boots:

        virsh autostart vm.zindilis.net

Disable automatic start:

        virsh autostart --disable vm.zindilis.net

Manually power on a VM:

        virsh start vm.zindilis.net

Gracefully shutdown a VM:

        virsh shutdown vm.zindilis.net

Forcefully shutdown a VM:

        virsh destroy vm.zindilis.net
