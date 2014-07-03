<!-- -
Title: Get all device Serial Numbers from ZenDMD in Zenoss
Description: How to get all devices' serial numbers from Zenoss with ZenDMD
First Published: 2013-11-12
Last Updated: 2014-01-15
- -->

<ol class="breadcrumb" itemprop="breadcrumb">
	<li><a href="/">Home</a></li>
	<li><a href="/docs/">Docs</a></li>
	<li><a href="/docs/zenoss/">Zenoss</a></li>
	<li><a href="/docs/zenoss/zendmd-get-device-serial-numbers.html">Get all device Serial Numbers from ZenDMD in Zenoss</a></li>
</ol>

Get all device Serial Numbers from ZenDMD in Zenoss
===================================================

To get a list of devices in Zenoss that have a **Serial Number** 
defined, run the following script as user `zenoss`. It will display the 
Device Title, the Serial Number, and -as an added bonus- the Hardware 
Manufacturer.

```python
import Globals
from Products.ZenUtils.ZenScriptBase import ZenScriptBase
DMD = ZenScriptBase(connect=True).dmd

Devices = dmd.Devices.getSubDevicesGen()

for Device in Devices:
    if Device.getHWSerialNumber():
        print Device.title, Device.getHWSerialNumber(), Device.getHWManufacturerName()
```
