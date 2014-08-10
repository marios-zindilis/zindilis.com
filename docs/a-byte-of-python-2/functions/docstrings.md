<!-- -
Title: A Byte of Python 2: Docstrings
Author: Swaroop C H
Editor: Marios Zindilis
First Published: 2003
Last Updated: 2014-02-14
- -->

<ol class='breadcrumb' itemprop='breadcrumb'>
	<li><a href="/">Home</a></li>
	<li><a href="/docs/">Docs</a></li>
	<li><a href="/docs/a-byte-of-python-2/">A Byte of Python 2</a></li>
	<li><a href="/docs/a-byte-of-python-2/functions/">Functions</a></li>
	<li><a href='/docs/a-byte-of-python-2/functions/docstrings.html'>Docstrings</a></li>
</ol>

Docstrings
==========

Python has a nifty feature called **documentation strings** which is 
usually referred to by its shorter name: **docstrings**. DocStrings are 
an important tool that you should make use of, since it helps to 
document the program better and makes it easier to understand. 
Amazingly, you can even get back the docstring from, say a function, 
when the program is actually running!

Using DocStrings
----------------

### Example 7.8: Using DocStrings ###

```python
#!/usr/bin/python
# Filename: func_doc.py

def printMax(x, y):
	'''Prints the maximum of two numbers.

The two values must be integers.'''
	x = int(x) # convert to integers, if possible
	y = int(y)
	if x > y:
		print x, 'is maximum'
	else:
		print y, 'is maximum'

printMax(3, 5)
print printMax.__doc__
```

### Output ###

```bash
$ python func_doc.py
5 is maximum
Prints the maximum of two numbers.

The two values must be integers.
```

### How It Works ###

A string on the first logical line of a function is the *docstring* for 
that function. Note that DocStrings also apply to modules and classes 
which you will learn about in the respective chapters.

The convention followed for a docstring is a multi-line string where the 
first line starts with a capital letter and ends with a dot. Then the 
second line is blank followed by any detailed explanation starting from 
the third line. You are strongly advised to follow this convention for 
all your docstrings for all your non-trivial functions.

You can access the docstring of the `printMax()` function using the 
`__doc__` (notice the double underscores) attribute (name belonging to) 
of the function. Just remember that Python treats everything as an 
object and this includes functions. You'll learn more about objects in 
the chapter on classes.

If you have used the `help()` in Python, then you have already seen 
the usage of docstrings! The `help()` simply fetches the `__doc__` 
attribute of that function and displays it in a neat manner for you. 
You can try it out on the function above - just include `help(printMax)` 
in your program. Remember to press `q` to exit the help.

Automated tools can retrieve the documentation from your program in this 
manner. Therefore, I strongly recommend that you use docstrings for any 
non-trivial function that you write. The `pydoc` command that comes with 
your Python distribution works similarly to `help()` using docstrings.

<ul class='pager'>
	<li class='previous'><a href='/docs/a-byte-of-python-2/functions.html'>&larr; Previous: Functions</a></li>
	<li class='next'><a href='/docs/a-byte-of-python-2/functions/summary.html'>Next: Summary &rarr;</a></li>
</ul>
