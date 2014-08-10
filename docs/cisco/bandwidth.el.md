<!-- -
Title: bandwidth (Εντολή Cisco)
Description: Σημειώσεις για την εντολή bandwidth σε συσκευές Cisco
First Published: 2011-10-08
- -->

<ol class='breadcrumb' itemprop='breadcrumb'>
	<li><a href="/">Home</a></li>
	<li><a href="/docs/">Docs</a></li>
	<li><a href="/docs/cisco/">Cisco</a></li>
	<li><a href="/docs/cisco/bandwidth.el.html">bandwidth</a></li>
</ol>

`bandwidth` (εντολή Cisco)
==========================

Με την εντολή `bandwidth` μπορείτε να ορίσετε το εύρος ζώνης μιας 
διεπαφής σε συσκευές Cisco. Η μονάδα μέτρησης είναι Kilobits / Second 
(Kbps). Αν δεν οριστεί ρητά, το εύρος από προεπιλογή είναι (σε Kbps):

*   Serial: 1.544
*   Ethernet: 10.000
*   FastEthernet: 100.000
*   GigabitEthernet: 1.000.000 

Η τιμή που ορίζεται με την εντολή `bandwidth` δεν καθορίζει το 
πραγματικό λειτουργικό εύρος της διεπαφής, αλλά χρησιμοποιείται μόνο 
για τον υπολογισμό διαφόρων παραμέτρων, όπως για παράδειγμα του EIGRP 
Metric, και μερικών παραμέτρων του QoS και του SNMP.

Συγκεκριμένα για το EIGRP Metric, συνίσταται η παραμετροποίηση κάποιας 
άλλης από τις τιμές που συνυπολογίζονται στο Metric, για το λόγο ότι το 
bandwidth επηρεάζει και άλλα πράγματα, άσχετα με την δρομολόγηση. 
