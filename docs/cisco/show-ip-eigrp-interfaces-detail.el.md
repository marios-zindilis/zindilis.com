<!-- -
Title: show ip eigrp interfaces detail
Description: Σημειώσεις για την εντολή show ip eigrp interfaces details σε συσκευές Cisco
Author: Marios Zindilis
First Published: 2012-04-28
Last Updated: 2014-01-20
- -->

<ol class="breadcrumb">
<li><a href="/">Home</a></li>
<li><a href="/docs/">Docs</a></li>
<li><a href="/docs/cisco/">Cisco</a></li>
<li><a href="/docs/cisco/show-ip-eigrp-interfaces-detail.el.html">show ip eigrp interfaces detail</a></li>
</ol>

`show ip eigrp interfaces detail`
=================================

Εμφανίζει λεπτομέρειες για τις διεπαφές ενός δρομολογητή οι οποίες έχουν 
ρυθμιστεί να συμμετέχουν σε δρομολόγηση EIGRP, είναι σε κατάτασταση 
Up/Up και δεν είναι Passive. Μεταξύ άλλων, εμφανίζει τις ρυθμίσεις Hello 
timer για κάθε διεπαφή.

Αν ο δρομολογητής έχει πολλές διεπαφές, και το αποτέλεσμα είναι 
δυσανάγνωστο, μπορείτε να περάσετε ως παράμετρο το όνομα της διεπαφής, 
για παράδειγμα:

    show ip eigrp interfaces detail FastEthernet 0/1
