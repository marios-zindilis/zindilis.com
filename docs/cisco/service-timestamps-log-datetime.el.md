<!-- -
Title: service timestamps log datetime
First Published: 2011-09-29
- -->

<ol class="breadcrumb">
<li><a href="/">Home</a></li>
<li><a href="/docs/">Docs</a></li>
<li><a href="/docs/cisco/">Cisco</a></li>
<li><a href="/docs/cisco/service-timestamps-log-datetime.el.html">service timestamps log datetime</a></li>
</ol>

service timestamps log datetime
===============================

Η εντολή αυτή καθορίζει την εμφάνιση των ημερομηνιών στα μηνύματα 
αποσφαλμάτωσης στο τερματικό, σε εμφάνιση ημερομηνίας και ώρας, σε 
αντίθεση με την εναλλακτική που είναι η εμφάνιση σε διάρκεια συνεχόμενης 
λειτουργίας της συσκευής από την τελευταία εκκίνηση (uptime). Ένα παράδειγμα 
εξόδου αποσφαλμάτωσης με αυτή την εμφάνιση των ημερομηνιών είναι:

    Jan  5 19:34:18: tcp2: I ESTAB 192.168.2.100:44268 192.168.2.222:23 seq 1368141491
            DATA 2 ACK 946277077 PSH  WIN 56000
    Jan  5 19:34:18: tcp2: O ESTAB 192.168.2.100:44268 192.168.2.222:23 seq 946277077
            DATA 2 ACK 1368141493 PSH  WIN 3843
  
