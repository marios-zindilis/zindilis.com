<!-- -
Title: A Byte of Python 2: The from..import statement
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
        <li><a href="/docs/a-byte-of-python-2/modules/the-from-import-statement.html">The from..import statement</a></li>
</ol>

The `from..import` statement
============================

If you want to directly import the `argv` variable into your program 
(to avoid typing the `sys.` prefix everytime for it), then you can use 
the `from sys import argv` statement. If you want to import all the 
names used in the `sys` module, then you can use the `from sys import *` 
statement. This works for any module. In general, avoid using the 
`from..import` statement and use the `import` statement instead since 
your program will be much more readable and will avoid any name clashes 
between names that way. 

<ul class='pager'>
        <li class='previous'><a href='/docs/a-byte-of-python-2/modules/byte-compiled-pyc-files.html'>&larr; Previous: Byte-compiled .pyc files</a></li>
	<li class='next'><a href='/docs/a-byte-of-python-2/modules/a-modules-name.html'>Next: A module's __name__</a><li>
</ul>
