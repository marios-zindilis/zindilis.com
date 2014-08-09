<!-- -
Title: ntfsfix
Description: Σημειώσεις για το πρόγραμμα ntfsfix
Author: Marios Zindilis
First Published: 2011-07-05
- -->

<ol class="breadcrumb" itemprop="breadcrumb">
	<li><a href="/">Home</a></li>
	<li><a href="/docs/">Docs</a></li>
	<li><a href="/docs/ntfsfix.el.html">ntfsfix</a></li>
</ol>

`ntfsfix`
=========

Το εργαλείο `ntfsfix` διορθώνει μερικά συνηθισμένα και απλά σφάλματα σε 
δίσκους NTFS, και αναγκάζει τα Windows να εκτελέσουν το `chkdsk` την 
επόμενη φορά που θα εκκινήσουν με τον δίσκο. Μπορεί να βοηθήσει σε 
περιπτώσεις όπου τα Windows δεν μπορούν να προσαρτήσουν έναν NTFS δίσκο, 
ή παρουσιάζουν σφάλματα όπως το `error "$MFTMirr does not match $MFT"`.

Για να το εκτελέσετε, απλά δώστε του ως παράμετρο το σημείο προσάρτησης 
του δίσκου που θέλετε να ελέγξετε, π.χ:

    ntfsfix /dev/sdb1
