<!-- -
Title: /etc/lilo.conf (ελληνικά)
Description: Σημειώσεις για το αρχείο ρυθμίσεων του LILO, '/etc/lilo.conf'
Author: Marios Zindilis
First Published: 2012-02-08
Last Updated: 2014-01-05
- -->

<ol class="breadcrumb" itemprop="breadcrumb">
    <li><a href="/">Home</a></li>
    <li><a href="/docs/">Docs</a></li>
    <li><a href="/docs/lfs/">Linux Filesystem</a></li>
    <li><a href="/docs/lfs/etc/">etc</a></li>
    <li><a href="/docs/lfs/etc/lilo.conf.html">lilo.conf</a></li>
</ol>

`/etc/lilo.conf`
================

Ο Lilo Bootloader έχει ξεπεραστεί από τον GRUB, ωστόσο σε παλιά 
συστήματα μπορεί να υπάρχει ακόμα. Το αρχείο <code>/etc/lilo.conf</code> 
είναι το αρχείο ρυθμίσεών του. Μετά από οποιαδήποτε αλλαγή στο στις 
ρυθμίσεις, χρειάζεται επανεγκατάσταση του Lilo, απλά με την εντολή 
<code>lilo</code>.

Η γραμμή για κάθε πυρήνα που είναι εγκατεστημένος στο σύστημα ξεκινά 
από <code>image=</code>, και ακολουθεί η απόλυτη διαδρομή προς το 
αρχείο που περιέχει τον πυρήνα. Για παράδειγμα:

    image=/boot/bzImage-2.6.28
