<!-- -
Title: Get Device Groups in Zenoss with ZenDMD
Description: How to get device groups from Zenoss with ZenDMD
First Published: 2013-11-11
Last Updated: 2014-01-26
- -->

<ol class="breadcrumb" itemprop="breadcrumb">
	<li><a href="/">Home</a></li>
	<li><a href="/docs/">Docs</a></li>
	<li><a href="/docs/zenoss/">Zenoss</a></li>
	<li><a href="/docs/zenoss/zendmd-get-groups.html">Get Device Groups in Zenoss with ZenDMD</a></li>
</ol>

Get Device Groups in Zenoss with ZenDMD
=======================================

```python
import Globals
from Products.ZenUtils.ZenScriptBase import ZenScriptBase
DMD = ZenScriptBase(connect=True).dmd
   
for Group in DMD.Groups.getSubOrganizers():
    print Group.getPrimaryId()
```

Get all Devices in specific Group
---------------------------------

```python
for Device in Group.devices():
    print Device.getPrimaryId()
```
