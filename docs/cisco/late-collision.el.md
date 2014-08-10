<!-- -
Title: late collision σε συσκευές Cisco
Description: Σημειώσεις για τα late collision σε συσκευές Cisco
Author: Marios Zindilis
First Published: 2012-05-10
- -->

<ol class="breadcrumb" itemprop="breadcrumb">
	<li><a href="/">Home</a></li>
	<li><a href="/docs/">Docs</a></li>
	<li><a href="/docs/Cisco/">Cisco</a></li>
	<li><a href="/docs/cisco/late-collision.el.html">`late collision` σε συσκευές Cisco</a></li>
</ol>

Late collision σε συσκευές Cisco
=================================

Στις συσκευές Cisco, ένας από τους μετρητές που τηρούνται για κάθε 
διεπαφή είναι τα `late collision`. Κατά τη Cisco, αν τηρούνται οι 
προδιαγραφές καλωδίωσης σε ένα τοπικό δίκτυο, τότε οι πιθανές 
συγκρούσεις (collisions) θα συμβαίνουν προτού μια διεπαφή στείλει τα 
πρώτα 64 byte του πακέτου. Στην περίπτωση που η σύγκρουση συμβεί μετά 
τα 64 byte, τότε ανιχνεύεται ως **late collision**.

Μπορεί να οφείλεται σε:

1.  μεγαλύτερο μήκος καλωδίων από εκείνο που ορίζουν τα πρότυπα, ή
2.  σε ασυμφωνία της ρύθμισης Duplex σε συνδεδεμένες διεπαφές. 
