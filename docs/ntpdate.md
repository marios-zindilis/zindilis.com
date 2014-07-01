<!-- -
Title: ntpdate
Description: ntpdate
First Published: 2013-12-18
Last Updated: 2013-12-18
- -->

<ol class="breadcrumb" itemprop="breadcrumb">
	<li><a href="/">Home</a></li>
	<li><a href="/docs/">Docs</a></li>
	<li><a href="/docs/ntpdate.html">ntpdate</a></li>
</ol>

`ntpdate`
=========

Troubleshooting `no server suitable for synchronization`
--------------------------------------------------------

If you have a cron jon periodically running `ntpdate` to update the 
time on a system, you might at some point hit the `no server suitable 
for synchronization` error. You can gain some insight into the problem 
with running `ntpdate` with the `-d` option, which will show debugging 
output from the actions of `ntpdate`, without actually changing the 
time on the system.

One example cause of this issue is that the value of **strata** exceeds 
a maximum value, in which case the NTP server is rejected by the system 
as being *too far* from its own source. You should then focus on either 
fixing the NTP server itself, or changing your `ntpdate` target to 
another system.
