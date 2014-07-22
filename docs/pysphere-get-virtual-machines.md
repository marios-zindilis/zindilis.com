<!-- -
Title: Get Virtual Machines from VMware with PySphere
Description: How to get a list of Virtual Machines from a VMware host with PySphere
First Published: 2013-12-27
- -->

<ol class="breadcrumb" itemprop="breadcrumb">
	<li><a href="/">Home</a></li>
	<li><a href="/docs/">Docs</a></li>
	<li><a href="/docs/pysphere-get-virtual-machines.html">Get Virtual Machines from VMware with PySphere</a></li>
</ol>

Get Virtual Machines from VMware with PySphere
==============================================

This is a simple example of how to get a list of Virtual Machines from 
a VMware host, using [PySphere](/docs/pysphere.html).

```python
import pysphere

server = pysphere.VIServer()
server.connect('vmware.zindilis.net', 'username', 'password')

vms = server.get_registered_vms()
for vm in vms:
	virtual_machine = server.get_vm_by_path(vm)
	print virtual_machine.get_property('name'), virtual_machine.get_property('ip_address')
```

