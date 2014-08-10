<!-- -
Title: A Byte of Python 2: Byte-compiled .pyc files
Author: Swaroop C H
Editor: Marios Zindilis
First Published: 2003
Last Updated: 2014-02-16
- -->

<ol class='breadcrumb' itemprop='breadcrumb'>
        <li><a href="/">Home</a></li>
        <li><a href="/docs/">Docs</a></li>
        <li><a href="/docs/a-byte-of-python-2/">A Byte of Python 2</a></li>
        <li><a href="/docs/a-byte-of-python-2/modules/">Modules</a></li>
        <li><a href="/docs/a-byte-of-python-2/modules/byte-compiled-pyc-files.html">Byte-compiled .pyc files</a></li>
</ol>

Byte-compiled `.pyc` files
==========================

Importing a module is a relatively costly affair, so Python does some 
tricks to make it faster. One way is to create **byte-compiled** files 
with the extension `.pyc`, which is related to the intermediate form 
that Python transforms the program into (remember the intro section on 
how Python works?). This `.pyc` file is useful when you import the 
module the next time from a different program - it will be much faster 
since part of the processing required in importing a module is already 
done. Also, these byte-compiled files are platform-independent. So, now 
you know what those `.pyc` files really are.

<ul class='pager'>
        <li class='previous'><a href='/docs/a-byte-of-python-2/modules/'>&larr; Previous: Modules</a></li>
	<li class='next'><a href='/docs/a-byte-of-python-2/modules/the-from-import-statement.html'>Next: The from..import statement</a><li>
</ul>
