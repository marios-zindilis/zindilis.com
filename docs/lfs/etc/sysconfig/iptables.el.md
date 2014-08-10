<!-- -
Title: /etc/sysconfig/iptables
First Published: 2012-02-08
- -->

<ol class="breadcrumb" itemprop="breadcrumb">
    <li><a href="/">Home</a></li>
    <li><a href="/docs/">Docs</a></li>
    <li><a href="/docs/lfs/">Linux Filesystem</a></li>
    <li><a href="/docs/lfs/etc/">etc</a></li>
    <li><a href="/docs/lfs/etc/sysconfig/">sysconfig</a></li>
    <li><a href="/docs/lfs/etc/sysconfig/iptables">iptables</a></li>
</ol>

/etc/sysconfig/iptables
=======================

Το αρχείο κανόνων του `iptables`.

Παραδείγματα
------------

### Πρόσβαση ιστού ###

Μετά την εγκατάσταση κάποιου εξυπηρετητή ιστού (Apache, Lighttp, κλπ) 
πρέπει να ανοίξετε την θύρα στην οποία «ακούει» ο εξυπηρετητής. Από 
προεπιλογή είναι η 80. Ο πιο κάτω κανόνας στο αρχείο `/etc/sysconfig/iptables` 
ανοίγει την πρόσβαση στη θύρα 80, ανεξάρτητα από την IP που ζητά πρόσβαση:

```bash
-A INPUT -m state --state NEW -m tcp -p tcp --dport 80 -j ACCEPT
```

### Απομακρυσμένη πρόσβαση (ssh) ###

Για να επιτρέψετε την απομακρυσμένη πρόσβαση από οποιαδήποτε IP, μπορείτε να χρησιμοποιήσετε τον ίδιο κανόνα με το προηγούμενο παράδειγμα, αλλάζοντας απλά τον αριθμό της θύρας σε 22 (προεπιλεγμένη θύρα για το ssh). Για περισσότερη ασφάλεια, μπορείτε να περιορίσετε τις διευθύνσεις IP που θα έχουν δικαίωμα ssh στο σύστημα: 

```bash
-A INPUT -m state --state NEW -m tcp -p tcp --source 192.168.0.0/16 --dport 22 -j ACCEPT
-A INPUT -m state --state NEW -m tcp -p tcp --dport 22 -j DROP
```

Στο πιο πάνω παράδειγμα, ο πρώτος κανόνας επιτρέπει την πρόσβαση σε οποιαδήποτε IP ξεκινά από «192.168», και την απαγορεύει σε οποιαδήποτε άλλη. 

### Αποτροπή αποστολής email ###

Αν δεν θέλετε οι χρήστες του συστήματος να στέλνουν email από το σύστημα, μπορείτε να απαγορεύσετε την έξοδο της θύρας 25: 

```bash
-A OUTPUT -p tcp -m tcp --sport 25 -j DROP
```
