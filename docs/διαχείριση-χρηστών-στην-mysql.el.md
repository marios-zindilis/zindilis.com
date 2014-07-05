<!-- -
Title: Διαχείριση χρηστών στην MySQL
First Published: 2011-11-20
Last Updated: 2014-07-05
- -->

<ol class="breadcrumb" itemprop="breadcrumb">
	<li><a href="/">Home</a></li>
	<li><a href="/docs/">Docs</a></li>
	<li><a href="/docs/διαχείριση-χρηστών-στην-mysql.el.html">Διαχείριση χρηστών στην MySQL</a></li>
</ol>

Διαχείριση χρηστών στην MySQL
=============================

Μερικές εντολές για διαχείριση χρηστών στο διαδραστικό περιβάλλον γραμμής 
εντολών της MySQL 5. 

Δημιουργία χρήστη
-----------------

Στη γραμμή εντολών της MySQL:

```mysql
create user 'username'@'localhost' identified by 'password';
```

Διαγραφή χρήστη
---------------

Αν ο χρήστης διαγραφεί απλά με:

```mysql
delete from mysql.users where User='username';
```

τότε μετά δεν επιτρέπεται η δημιουργία του ξανά, εκτός και αν γίνει:

```mysql
flush privileges;
```

Καθορισμός δικαιωμάτων
----------------------

Καθορισμός δικαιωμάτων του χρήση σε συγκεκριμένη βάση/πίνακες:

```mysql
grant all privileges on database.table to 'username'@'localhost';
```

Το database.table μπορεί να είναι `database.*` για όλους τους πίνακες στη 
database ή `*.*` για όλους τους πίνακες σε όλες τις βάσεις.

Αν χρησιμοποιείτε τον ίδιο χρήστη για πολλές βάσεις δεδομένων, μπορείτε να 
δείτε τι δικαιώματα έχει σε κάθε μία εκτελώντας:

```mysql
show grants for 'username'@'localhost';
```

Αλλαγή συνθηματικού
-------------------

```mysql
SET PASSWORD FOR 'username'@'localhost' = PASSWORD('new-password');
```

Σημειώσεις για την MySQL 4
--------------------------

Η MySQL 4 δεν υποστηρίζεται πλέον, όμως πολλοί εξυπηρετητές την έχουν 
εγκατεστημένη για λόγους συμβατότητας με παλιές εφαρμογές. Σε αυτή την έκδοση, 
η δημιουργία του χρήστη και η απόδοση δικαιωμάτων γίνεται σε ένα βήμα, απλά με 
την εντολή `GRANT`. Για παράδειγμα, η ακόλουθη εντολή ταυτόχρονα δημιουργεί 
τον χρήστη αν αυτός δεν υπάρχει, και του δίνει όλα τα δικαιώματα πάνω στη βάση 
δεδομένων `database`:

```mysql
grant all privileges on database.* to 'username'@'localhost' identified by 'password';
```
