<!-- -
Title: switchport port-security mac-address sticky
First Published: 2011-09-29
- -->

<ol class="breadcrumb">
<li><a href="/">Home</a></li>
<li><a href="/docs/">Docs</a></li>
<li><a href="/docs/cisco/">Cisco</a></li>
<li><a href="/docs/cisco/switchport-port-security-mac-address-sticky.el.html">switchport port-security mac-address sticky</a></li>
</ol>

switchport port-security mac-address sticky
===========================================

Η εντολή `switchport port-security mac-address sticky` καθορίζει ότι οι 
φυσικές διευθύνσεις MAC που δικαιούνται να επικοινωνούν μέσω της 
συγκεκριμένης διεπαφής, είναι αυτές που είναι ήδη συνδεδεμένες, ή οι 
πρώτες που θα συνδεθούν. Απαιτείται πρώτα να οριστεί η συγκεκριμένη 
διεπαφή ως access: [switchport mode access](/docs/cisco/switchport-mode-access.el.html) 
και να ενεργοποιηθεί σ' αυτήν η ασφάλεια διεπαφής: [switchport port-security](/docs/cisco/switchport-port-security.el.html). 

Δείτε επίσης
------------

*   Εναλλακτικά, μπορείτε να καθορίσετε ρητά ότι η διεπαφή θα επιτρέπει 
    μόνο συγκεκριμένες φυσικές διευθύνσεις MAC που θα ορίσετε, με την 
    εντολή [switchport port-security mac-address $MAC-ADDRESS](/docs/cisco/switchport-port-security-mac-address.el.html).
