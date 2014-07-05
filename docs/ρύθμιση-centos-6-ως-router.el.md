<!-- -
Title: Ρύθμιση CentOS 6 ως Router
Author: Marios Zindilis
First Published: 2012-04-21
- -->

<ol class="breadcrumb" itemprop="breadcrumb">
	<li><a href="/">Home</a></li>
	<li><a href="/docs/">Docs</a></li>
	<li><a href="/docs/ρύθμιση-centos-6-ως-router.el.html">Ρύθμιση CentOS 6 ως Router</a></li>
</ol>

Ρύθμιση CentOS 6 ως Router
==========================

Αυτός ο οδηγός περιγράφει τη ρύθμιση ενός συστήματος με CentOS 6 ώστε να 
λειτουργεί ως δρομολογητής δικτύου (router). Έχει ελεγχθεί ότι δουλεύει 
σε «φρέσκια» εγκατάσταση του λειτουργικού, ενημερωμένη στα πιο πρόσφατα 
πακέτα που διατίθενται στα βασικά αποθετήρια. Δεν αποκλείεται να δουλεύει 
σε προηγούμενες εκδόσεις του CentOS ή σε άλλες διανομές βασισμένες σε 
RedHat. 

Υλικό
-----

Ένα σύστημα το οποίο προορίζεται να λειτουργήσει ως δρομολογητής, τυπικά χρειάζεται τουλάχιστον δύο κάρτες δικτύου. Κατά τα άλλα, δεν χρειάζεται άλλο υλικό.

Σημείωση: Είναι δυνατή η δρομολόγηση μεταξύ διαφορετικών δικτύων από την ίδια κάρτα δικτύου, αλλά αυτό δεν περιγράφεται σε αυτόν τον οδηγό. 

Λογισμικό
---------

Το λογισμικό που απαιτείται βρίσκεται ήδη στην βασική εγκατάσταση του 
CentOS 6. Σε αυτόν τον οδηγό χρησιμοποιείται η υπηρεσία `network` για 
ρύθμιση των διεπαφών δικτύου, ο πυρήνας `Linux` για τη δρομολόγηση, 
και το `iptables` για <abbr title="Network Address Translation">NAT</abbr>. 

Ρυθμίσεις
---------

Πριν από άλλες ρυθμίσεις, προσωπικά προτιμώ να απενεργοποιώ τον 
NetworkManager και να ενεργοποιώ την υπηρεσία `network`. Αυτό είναι 
προαιρετικό για τη συνέχεια του οδηγού:

    chkconfig NetworkManager off
    service NetworkManager stop
    chkconfig network on
    service network start

Παραμετροποίηση διεπαφών δικτύου 
--------------------------------

Το σύστημα αναφοράς έχει δύο διεπαφές δικτύου, τις `eth0` και `eth1`. Η 
πρώτη έχει μια public διεύθυνση IP, την 77.88.99.111, την οποία αναθέτει 
ο πάροχος υπηρεσιών διαδικτύου. Η δεύτερη έχει την ιδιωτική διεύθυνση 
192.168.1.1, η οποία θα είναι και το default gateway για τα υπόλοιπα 
συστήματα στο εσωτερικό δίκτυο.

Ολόκληρο το αρχείο παραμετροποίησης της `eth0`:

```bash
[root@centos6 ~]$ cat /etc/sysconfig/network-scripts/ifcfg-eth0
TYPE=Ethernet
BOOTPROTO=none
DEFROUTE=yes
IPV4_FAILURE_FATAL=yes
IPV6INIT=no
NAME=eth0
UUID=d30441e3-4212-4b24-b25a-d9c36b0aebd6
ONBOOT=yes
HWADDR=00:1C:C0:0D:36:C6
IPADDR=78.158.136.212
PREFIX=24
GATEWAY=78.158.136.254
NM_CONTROLLED=no
```

Ολόκληρο το αρχείο παραμετροποίησης της `eth1`:

```bash
[root@centos6 ~]$ cat /etc/sysconfig/network-scripts/ifcfg-eth1
TYPE=Ethernet
BOOTPROTO=none
DEFROUTE=no
IPV4_FAILURE_FATAL=yes
IPV6INIT=no
NAME=eth1
ONBOOT=yes
HWADDR=00:05:5D:2E:FF:65
IPADDR=192.168.1.254
PREFIX=24
GATEWAY=192.168.1.254
NM_CONTROLLED=no
```

Μερικές από τις παραμέτρους εξηγούνται [εδώ](/docs/etc-sysconfig-network-scripts-ifcfg-eth0.el.html). 
Για αυτόν τον οδηγό, ειδική σημασία έχει κυρίως η παράμετρος DEFROUTE, η 
οποία καθορίζει κατά πόσο θα δημιουργείται αυτόματα μια προεπιλεγμένη 
διαδρομή δικτύου (default route) κατά την ενεργοποίηση της διεπαφής. 
Στην διεπαφή με την δημόσια IP η τιμή είναι "yes", στην άλλη "no". 

Παραμετροποίηση πυρήνα
----------------------

Τέλος, για να επιτρέπεται η ροή πακέτων δικτύου από τη μια διεπαφή στην 
άλλη, και από συστήματα στο εσωτερικό δίκτυο προς το διαδίκτυο, πρέπει 
να κάνετε μερικές αλλαγές στους κανόνες του `iptables`. Αν εξετάσετε 
την αρχική ρύθμιση στο αρχείο `/etc/sysconfig/iptables` θα δείτε τη 
γραμμή:

    -A FORWARD -j REJECT --reject-with icmp-host-prohibited

Αφαιρέστε την, για να επιτρέπεται η προώθηση πακέτων:

    [root@centos6 ~]$ iptables -t filter -D FORWARD -j REJECT --reject-with icmp-host-prohibited

Δύο ακόμη κανόνες χρειάζονται για να επιτρέπεται η ροή δικτύου μεταξύ των δύο διεπαφών:

    [root@centos6 ~]$ iptables -t filter -A FORWARD -i eth1 -o eth0 -m state --state RELATED,ESTABLISHED -j ACCEPT
    [root@centos6 ~]$ iptables -t filter -A FORWARD -i eth0 -o eth1 -j ACCEPT

Ρύθμιση NAT:

    [root@centos6 ~]$ iptables -t nat -A POSTROUTING -o eth0 -j MASQUERADE

Προσέξτε ότι στην ρύθμιση NAT, χρησιμοποιείται η διεπαφή δικτύου που έχει την δημόσια IP.

Σύνοψη
------

Με τις ρυθμίσεις που περιγράφηκαν στο πιο πάνω άρθρο μπορείτε να χρησιμοποιήσετε έναν υπολογιστή με δύο κάρτες δικτύου ως δρομολογητή (router). Με μερικές ακόμη προσθήκες (καλή ρύθμιση firewall, προσθήκη εξυπηρετητή DHCP, κ.α), ένα σύστημα ταπεινών επιδόσεων μπορεί να εξυπηρετεί λαμπρά ως σπιτικό gateway προς το διαδίκτυο. 
