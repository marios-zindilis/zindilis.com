<!-- -
Title: Display IP Address in /etc/issue on CentOS
Description: How to display the IP address on CentOS by automatically populating /etc/issue
First Published: 2013-11-09
- -->

<ol class="breadcrumb" itemprop="breadcrumb">
	<li><a href="/">Home</a></li>
	<li><a href="/docs/">Docs</a></li>
	<li><a href="/docs/centos-show-ip-address-in-etc-issue.html">Display IP Address in /etc/issue on CentOS</a></li>
</ol>

Display IP Address in `/etc/issue` on CentOS
============================================

I have several CentOS virtual machines that I only fire up when I need 
to test something, so I don't give them static IPs. For my own 
convenience, I added the following lines in `/etc/rc.local`, which 
get the IP Address that was leased to the machine by the DHCP server, 
and change `/etc/issue` to display it:

```bash
export IPADDR=$(ifconfig eth1 | grep 'inet ' | cut -d ':' -f 2 | cut -d ' ' -f 1)
sed -i "s/IP Address:.*/IP Address: $IPADDR/" /etc/issue
```

This way, once the VM boots up and gets an IP from DHCP, that IP will 
be displayed in the hypervisor's console.
