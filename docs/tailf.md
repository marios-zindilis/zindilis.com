<!-- -
Title: tailf
Description: Notes on the 'tailf' command
First Published: 2014-01-02
- -->

<ol class="breadcrumb" itemprop="breadcrumb">
	<li><a href="/">Home</a></li>
	<li><a href="/docs/">Docs</a></li>
	<li><a href="/docs/tailf.html">tailf</a></li>
</ol>

`tailf`
=======

`tailf` does the same thing as `tail -f`: it displays the last lines of 
a file, and then *follows* the file as it grows, and displays new lines 
as they are appended to it. Compared to `tail -f`, it uses less 
resources on the system, by not reading from the disk while the text 
file is not updated.

See also
--------

*   [`tail`](/docs/tail.html)
