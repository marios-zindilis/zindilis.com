<!-- -
Title: Get Zenoss Events from ZenDMD
Description: How to get Zenoss events with ZenDMD
First Published: 2013-10-25
Last Updated: 2013-12-10
- -->

<ol class="breadcrumb" itemprop="breadcrumb">
	<li><a href="/">Home</a></li>
	<li><a href="/docs/">Docs</a></li>
	<li><a href="/docs/zenoss/">Zenoss</a></li>
	<li><a href="/docs/zenoss/zendmd-get-events.html">Get Zenoss Events from ZenDMD</a></li>
</ol>

Get Zenoss Events from ZenDMD
=============================

```python
#!/usr/bin/env python
    
import Globals
from Products.ZenUtils.ZenScriptBase import ZenScriptBase
DMD = ZenScriptBase(connect=True).dmd
  
Events = DMD.ZenEventManager.getEventList()
```

Each `Event` in `Events` (iterable) offers:

*   `__ac_permissions__`
*   `__allow_access_to_unprotected_subobjects__`
*   `__doc__`
*   `__implemented__`
*   `__init__`
*   `__module__`
*   `__providedBy__`
*   `__provides__`
*   `_action`
*   `_baseurl`
*   `_clearClasses`
*   `_fields`
*   `_zem`
*   `clearClasses`
*   `component`
*   `count`
*   `device`
*   `eventClass`
*   `eventKey`
*   `eventPermission`
*   `eventState`
*   `evid`
*   `firstTime`
*   `getCssClass`
*   `getDataList`
*   `getDedupFields`
*   `getEventData`
*   `getEventDetailHref`
*   `getEventFields`
*   `getStateFor`
*   `getStateToCopy`
*   `getStateToCopyFor`
*   `getTypeToCopy`
*   `getTypeToCopyFor`
*   `jellyFor`
*   `lastTime`
*   `processUniqueID`
*   `setCopyableState`
*   `setStateFor`
*   `severity`
*   `summary`
*   `unjellyFor`
*   `updateFromDict`
*   `updateFromFields`
*   `zem`
