<!-- -
Title: /etc/sysconfig/network-scripts/ifcfg-eth0
First Published: 2012-04-21
- -->

<ol class="breadcrumb" itemprop="breadcrumb">
    <li><a href="/">Home</a></li>
    <li><a href="/docs/">Docs</a></li>
    <li><a href="/docs/lfs/">Linux Filesystem</a></li>
    <li><a href="/docs/lfs/etc/">etc</a></li>
    <li><a href="/docs/lfs/etc/sysconfig/">sysconfig</a></li>
    <li><a href="/docs/lfs/etc/sysconfig/network-scripts/">network-scripts</a></li>
    <li><a href="/docs/lfs/etc/sysconfig/network-scripts/ifcg-eth0">ifcg-eth0</a></li>
</ol>

/etc/sysconfig/network-scripts/ifcfg-eth0
=========================================

Παράδειγμα αρχείου ρύθμισης μιας διεπαφής δικτύου η οποία δεν ελέγχεται από τον NetworkManager: 

```bash
# Ρυθμίσεις υλικού:
UUID="46e26279-f69b-daf5-1b79-d03677b7178d"
HWADDR=00:1C:C0:0D:36:C6
DEVICE="p1p1"
TYPE="Ethernet"
ONBOOT="yes"
NAME=eth0
NM_CONTROLLED="no"
 
# Ρυθμίσεις IPv4:
BOOTPROTO="none"
IPADDR0="192.168.1.100"
PREFIX0="24"
GATEWAY0="192.168.1.1"
DNS1="192.168.1.53"
DEFROUTE="yes"
IPV4_FAILURE_FATAL="yes"
 
# Ρυθμίσεις IPv6:
IPV6INIT="yes"
IPV6_AUTOCONF=yes
IPV6_DEFROUTE=yes
IPV6_FAILURE_FATAL=no
IPV6_PEERDNS=yes
IPV6_PEERROUTES=yes
```

 Παράμετροι
-----------

<dl>
<dt><code>BOOTPROTO</code></dt>
<dd> Αν η συγκεκριμένη διεπαφή πρέπει να ρυθμίζεται αυτόματα μέσω DHCP, τότε η τιμή της παραμέτρου θα είναι <code>"dhcp"</code>. Αλλιώς, αν θα έχει στατική διεύθυνση IP, θα είναι <code>"none"</code>.</dd>
<dt><code>DEFROUTE</code></dt>
<dd> Καθορίζει αν κατά την ενεργοποίηση της διεπαφής θα προστίθεται αυτόματα προς αυτήν, ένα προεπιλεγμένο δρομολόγιο (default route) δικτύου.</dd>
<dt><code>HWADDR</code></dt>
<dd>Η διεύθυνση MAC της διεπαφής. Η πραγματική διεύθυνση καθορίζεται από τον κατασκευαστή της κάρτας δικτύου, και είναι μοναδική στον κόσμο. Είναι δυνατή η αλλαγή της τιμής αυτής της παραμέτρου, αλλά δεν συνηθίζεται.</dd>
<dt><code>NM_CONTROLLED</code></dt>
<dd>Καθορίζει αν η διεπαφή ελέγχεται από τον <code>NetworkManager</code>. Σε περίπτωση που η τιμή είναι <code>"no"</code>, θα πρέπει να προβλεφθεί κάποιος άλλος τρόπος για να ενεργοποιείται η διεπαφή κατά την εκκίνηση του συστήματος, αν αυτό είναι απαραίτητο.</dd>
<dt><code>ONBOOT</code></dt><dd> Καθορίζει αν η διεπαφή να ενεργοποιείται κατά την εκκίνηση του συστήματος.</dd>
</dl>
