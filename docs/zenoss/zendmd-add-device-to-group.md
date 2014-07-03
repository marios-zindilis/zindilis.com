<!-- -
Title: Zenoss ZenDMD: Add device to Group
First Published: 2014-02-19
- -->

<ol class='breadcrumb' itemprop='breadcrumb'>
	<li><a href="/">Home</a></li>
	<li><a href="/docs/">Docs</a></li>
	<li><a href="/docs/zenoss/">Zenoss</a></li>
	<li><a href="/docs/zenoss/zendmd-add-device-to-group.html">Add a device to a Group with ZenDMD</a></li>
</ol>


Zenoss: Add a device to a Group with ZenDMD
===========================================

As user `zenoss`, run `zendmd`, and:

```python
Device = find('My Awesome Server')
Device.addDeviceGroup('My Wonderful Group')
commit()
```

This will make the device named `My Awesome Server` a member of the 
group named `My Wonderful Group`. 
