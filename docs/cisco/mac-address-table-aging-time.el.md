<!-- -
Title: mac-address-table aging-time
Description: Σημειώσεις για την εντολή mac-address-table aging-time σε συσκευές Cisco
Author: Marios Zindilis
First Published: 2011-06-18
- -->

<ol class="breadcrumb" itemprop="breadcrumb">
	<li><a href="/">Home</a></li>
	<li><a href="/docs/">Docs</a></li>
	<li><a href="/docs/cisco/">Cisco</a></li>
	<li><a href="/docs/cisco/mac-address-table-aging-time.el.html">mac-address-table aging-time</a></li>
</ol>

mac-address-table aging-time
============================

Με την εντολή αυτή μπορείτε να καθορίσετε αν και κάθε πόσο χρόνο θα 
διαγράφονται οι καταγραφές στον πίνακα διευθύνσεων MAC (MAC address 
table) μιας συσκευής. Αν δοθεί η τιμή 0, τότε δεν διαγράφονται **ποτέ** 
οι καταγραφές, αλλιώς αν δοθεί ένας ακέραιος, τότε καταγράφονται σε 
τόσα <i>δευτερόλεπτα</i> όσα ο ακέραιος που δόθηκε. Για παράδειγμα:

    cisco(config)#mac-address-table aging-time 600

Η πιο πάνω εντολή θα ορίσει τη διάρκεια παραμονής των διευθύνσεων MAC 
σε δέκα λεπτά.

<dl>
<dt> Προεπιλογή
</dt><dd> Η προεπιλεγμένη τιμή της μεταβλητής $TIME στις συσκευές Cisco είναι 300, δηλαδή 5 λεπτά.
</dd><dt> Εξαιρέσεις
</dt><dd> Μερικές παλιότερες συσκευές δεν υποστηρίζουν την τιμή 0, δηλαδή δεν υποστηρίζουν την απενεργοποίηση της διαγραφής των διευθύνσεων από τον πίνακα. Σε αυτή την περίπτωση, η πλησιέστερη λύση είναι ο ορισμός της μεταβλητής $TIME στην μεγαλύτερη τιμή που επιτρέπει η συσκευή.
</dd></dl>
