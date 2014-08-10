<!-- -
Title: rpm
Description: Σημειώσεις για το πρόγραμμα rpm
Author: Marios Zindilis
First Published: 2012-02-16
- -->

<ol class="breadcrumb" itemprop="breadcrumb">
	<li><a href="/">Home</a></li>
	<li><a href="/docs/">Docs</a></li>
	<li><a href="/docs/rpm.el.html">rpm</a></li>
</ol>

`rpm`
=====

Στις διανομές που είναι βασισμένες στο Red Hat (Fedora, CentOS, και εν 
μέρει Mandriva, OpenSUSE) το πρόγραμμα rpm μπορεί να διαχειριστεί πακέτα 
λογισμικού.

Επιλογές
--------

<table class='table table-bordered table-condensed'>
	<thead>
		<tr><th> Επιλογή </th><th> Περιγραφή</th></tr>
	</thead>
<tbody>
<tr>
<td><code>--checksig</code></td>
<td>Εντοπίζει την ψηφιακή υπογραφή ενός πακέτου <code>.rpm</code> ώστε να διαπιστωθεί η αυθεντικότητά του.
</td></tr>
<tr>
<td> <code>-e</code> </td>
<td> Απεγκαθιστά ένα πακέτο.
</td></tr>
<tr>
<td> <code>-F</code> </td>
<td> Αναβαθμίζει ένα πακέτο <b>μόνο</b> αν αυτό προϋπάρχει σε προηγούμενη έκδοση.
</td></tr>
<tr>
<td> <code>-i</code> </td>
<td> Εγκαθιστά ένα πακέτο <b>για πρώτη φορά</b>, δηλαδή δεν πρέπει στο σύστημα να υπάρχει ήδη πακέτο με το ίδιο όνομα. Αν υπάρχει τέτοιο πακέτο και είναι σε προηγούμενη έκδοση, <b>δεν το αναβαθμίζει</b>.
</td></tr>
<tr>
<td><code>-i&nbsp;--test</code></td>
<td>Χωρίς να εγκαθιστά το πακέτο, ελέγχει αν είναι δυνατή η εγκατάσταση. Ο πιο χρήσιμος έλεγχος που εκτελεί είναι για την ικανοποίηση των εξαρτήσεων.
</td></tr>
<tr>
<td> <code>-q</code> </td>
<td> Εξετάζει ένα πακέτο. Αν είναι εγκατεστημένο, επιστρέφει τον αριθμό έκδοσης.
</td></tr>
<tr>
<td> <code>-qa</code> </td>
<td> Επιστρέφει μια λίστα με όλα τα εγκατεστημένα πακέτα. Χρήσιμο αν θέλετε να πάρετε αυτή τη λίστα και να εγκαταστήσετε ακριβώς τα ίδια πακέτα σε ένα άλλο σύστημα.
</td></tr>
<tr>
<td> <code>-qi</code> </td>
<td> Επιστρέφει πληροφορίες για ένα εγκατεστημένο πακέτο.  Η έξοδος είναι παρόμοια με εκείνη της εντολής <code><a href="/mediawiki-1.17/index.php?title=yum&amp;action=edit&amp;redlink=1" class="new" title="yum (η σελίδα δεν υπάρχει)">yum info</a></code>.
</td></tr>
<tr>
<td> <code>-U</code> </td>
<td> Εγκαθιστά ένα πακέτο, ή αν υπάρχει σε προηγούμενη έκδοση το αναβαθμίζει.
</td></tr></tbody></table>
