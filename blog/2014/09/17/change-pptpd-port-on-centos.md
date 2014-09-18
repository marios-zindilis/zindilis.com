<!-- -
Title: Change pptpd port on CentOS
Description: How to change pptpd port on CentOS
First Published: 2014-09-17
- -->

How to change pptpd port on CentOS
==================================

I was testing Point-to-Point Tunneling today, between a CentOS 6 server running 
`pptpd`, and some Mikrotik routers as the clients, and I wanted to change the 
listening port on the `pptpd` side. After searching and reading a bit of 
documentation for a while, I was surprised to find that `pptpd` respects the 
record for `pptp` as defined in `/etc/services`.

Therefore, to change the port on which `pptpd` listens, change the following 
two lines:

```
pptp            1723/tcp                # pptp
pptp            1723/udp                # pptp
```

...from the default 1723 to whatever you want, and restart the `pptpd` service. 

Just in case, if you want to use a port that is already defined differently in 
`/etc/services`, you might comment out the default entries to avoid confusion. 
In my case, I used port 1821, so I commented out all the following lines:

```
pptp            1723/tcp                # pptp
pptp            1723/udp                # pptp
donnyworld      1821/tcp                # donnyworld
donnyworld      1821/udp                # donnyworld
```

...and added:

```
pptp            1821/tcp                # pptp
pptp            1821/udp                # pptp
```
