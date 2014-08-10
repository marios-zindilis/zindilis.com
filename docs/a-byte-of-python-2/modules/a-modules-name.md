<!-- -
Title: A Byte of Python 2: A module's __name__
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
        <li><a href="/docs/a-byte-of-python-2/modules/a-modules-name.html">A module's __name__</a></li>
</ol>

A module's `__name__`
=====================

Every module has a **name**, and statements inside that module can find 
it out. This is especially handy in one particular situation. As 
mentioned previously, when a module is imported for the first time, the 
main block in that module is run. What if you want to run the block only 
if the program was used by itself and not when it was imported from 
another module? This can be achieved using the `__name__` attribute of 
the module.

### Example 8.2: Using a module's` __name__` ###

```python
#!/usr/bin/python
# Filename: using_name.py

if __name__ == '__main__':
	print 'This program is being run by itself'
else:
	print 'I am being imported from another module'
```

### Output ###

```bash
$ python using_name.py
This program is being run by itself

$ python
>>> import using_name
I am being imported from another module
>>>
```

### How It Works ###

Every Python module has it's `__name__` defined and if this is 
`__main__`, it implies that the module is being run standalone by the 
user and you can do corresponding appropriate actions.

<ul class='pager'>
        <li class='previous'><a href='/docs/a-byte-of-python-2/modules/the-from-import-statement.html'>&larr; Previous: The from..import statement</a></li>
	<li class='next'><a href='/docs/a-byte-of-python-2/modules/making-your-own-modules.html'>Next: Making your own modules</a><li>
</ul>
