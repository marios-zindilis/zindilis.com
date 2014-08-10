<!-- -
Title: X.Org
First Published: 2012-04-04
- -->

<ol class="breadcrumb" itemprop="breadcrumb">
	<li><a href="/">Home</a></li>
	<li><a href="/docs/">Docs</a></li>
	<li><a href="/docs/x.org.el.html">X.Org</a></li>
</ol>

X.Org
=====

Ο εξυπηρετητής X **X.Org** χειρίζεται την απεικόνιση του γραφικού 
περιβάλλοντος. Είναι ο προεπιλεγμένος εξυπηρετητής γραφικών των 
περισσότερων διανομών Linux από το 2004 και μετά, οπότε αντικατέστησε 
τους [XFree86 3](/docs/xfree86-3.el.html) και [XFree86 4](/docs/xfree86-4.el.html), 
για λόγους άδειας χρήσης λογισμικού των τελευταίων.

Ρύθμιση
-------

Η ρύθμιση του X.Org μπορεί να γίνει είτε με επεξεργασία του αρχείου 
ρυθμίσεων, είτε με βοηθητικά εργαλεία, όπως το `Xorg` που εγκαθίσταται 
μαζί με τον εξυπηρετητή, το [system-config-display](/docs/system-config-display.el.html) 
(σε συστήματα Red Hat, Fedora ή CentOS) και το [xorgcfg](xorgcfg.el.html).

Εργαλείο Xorg
-------------

Για μια αρχική ρύθμιση του X.Org, ενώ δεν τρέχει ο εξυπηρετητής, εκτελέστε:

```bash
Xorg -configure
```

Αυτό θα δημιουργήσει ένα αρχείο με το όνομα `xorg.conf.new` μέσα 
στον φάκελο `/root`, το οποίο μπορείτε να χρησιμοποιήσετε για να 
προσθέσετε τις δικές σας τροποποιήσεις.

Δείτε επίσης
------------

*   Ιστότοπος [x.org](http://www.x.org/)
*   Άλλοι εξυπηρετητές γραφικών: [XFree86 3](/docs/xfree86-3.el.html), 
    [XFree86 4](/docs/xfree86-4.el.html), [Accelerated-X](/docs/accelerated-x.el.html). 
