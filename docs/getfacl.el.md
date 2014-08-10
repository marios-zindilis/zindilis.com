<!-- -
Title: getfacl
Description: Σημειώσεις για την εντολή getfacl
First Published: 2011-11-05
- -->

<ol class="breadcrumb" itemprop="breadcrumb">
	<li><a href="/">Home</a></li>
	<li><a href="/docs/">Docs</a></li>
	<li><a href="/docs/getfacl.el.html">getfacl</a></li>
</ol>

getfacl
=======

Μερικά συστήματα αρχείων όπως τα ext2, ext3, ext4, ReiserFS, JFS, XFS, 
υποστηρίζουν τον ορισμό επιπλέον ιδιοτήτων-δικαιωμάτων πρόσβασης στα 
αρχεία, τα οποία λειτουργούν ως λίστες ελέγχου πρόσβασης (Access 
Control Lists). Στα συστήματα αυτά, η εντολή `getfacl` δείχνει αυτά τα 
δικαιώματα ανά χρήστη.

Σε ένα αρχείο στο οποίο δεν έχουν οριστεί κανόνες ACL επιπλέον από τα 
απλά δικαιώματα πρόσβασης, το αποτέλεσμα της `getfacl` είναι αντίστοιχο 
με την έξοδο της `ls -l`:

```bash
$ ls -l route.pdf 
-rw-rw-r-- 1 mariosz mariosz 6619763 Sep 21 16:30 route.pdf
$ getfacl route.pdf
# file: route.pdf
# owner: mariosz
# group: mariosz
user::rw-
group::rw-
other::r--
```

Αν σε αυτό το αρχείο οριστούν δικαιώματα ACL, τότε πλέον αλλάζουν τα 
αποτελέσματα και των δύο εντολών, και το αρχείο συμπεριφέρεται διαφορετικά:

```bash
$ setfacl -m user:another:r-- route.pdf 
 
$ ls -l route.pdf
-rw-rw-r--+ 1 mariosz mariosz 6619763 Sep 21 16:30 route.pdf
 
$ getfacl route.pdf 
# file: route.pdf
# owner: mariosz
# group: mariosz
user::rw-
user:another:r--
group::rw-
mask::rw-
other::r--
```
