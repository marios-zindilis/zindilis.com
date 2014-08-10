<!-- -
Title: A Byte of Python 2: Modules
Author: Swaroop C H
Editor: Marios Zindilis
First Published: 2003
Last Updated: 2014-02-14
- -->

<ol class='breadcrumb' itemprop='breadcrumb'>
	<li><a href="/">Home</a></li>
	<li><a href="/docs/">Docs</a></li>
	<li><a href="/docs/a-byte-of-python-2/">A Byte of Python 2</a></li>
	<li><a href="/docs/a-byte-of-python-2/modules/">Modules</a></li>
</ol>

Modules
=======

You have seen how you can reuse code in your program by defining 
functions once. What if you wanted to reuse a number of functions in 
other programs that you write? As you might have guessed, the answer 
is modules. A module is basically a file containing all your functions 
and variables that you have defined. To reuse the module in other 
programs, the filename of the module must have a `.py` extension.

A module can be imported by another program to make use of its 
functionality. This is how we can use the Python standard library as 
well. First, we will see how to use the standard library modules. 

Using the `sys` module
----------------------

### Example 8.1: Using the `sys` module ###

```python
#!/usr/bin/python
# Filename: using_sys.py

import sys

print 'The command line arguments are:'
for i in sys.argv:
	print i

print '\n\nThe PYTHONPATH is', sys.path, '\n'
```

### Output ###

```bash
$ python using_sys.py we are arguments
The command line arguments are:
using_sys.py
we
are
arguments


The PYTHONPATH is ['/home/swaroop/byte/code', '/usr/lib/python23.zip',
'/usr/lib/python2.3', '/usr/lib/python2.3/plat-linux2',
'/usr/lib/python2.3/lib-tk', '/usr/lib/python2.3/lib-dynload',
'/usr/lib/python2.3/site-packages', '/usr/lib/python2.3/site-packages/gtk-2.0']
```

### How It Works ###

First, you **imported** the `sys` module using the `import` statement. 
Basically, this translates to you telling Python that you want to use 
this module. The `sys` module contains functionality related to the 
Python interpreter and its environment.

When Python executes the `import sys` statement, it looks for the 
`sys.py` module in one of the directores listed in its `sys.path` 
variable. If the file is found, then the statements in the main block 
of that module is run and then the module is made available for you to 
use. Note that the initialization is done only the first time that you 
import a module. Also, `sys` is short for 'system'.

The `argv` variable in the `sys` module is referred to using the dotted 
notation `sys.argv`, and one of the advantages of this approach is that 
the name does not clash with any other `argv` variable used in your 
program. Also, it indicates clearly that this name is part of the `sys` 
module.

The `sys.argv` variable is a list of strings (lists are explained in 
detail in later sections). Specifically, `sys.argv` contains the list of 
command line arguments i.e. the arguments passed to your program using 
the command line.

If you are using an IDE to write and run these programs, look for a way 
to specify command line arguments to the program in the menus.

Here, when we execute python using_sys.py we are arguments, we run the module using_sys.py with the python command and the other things that follow are arguments passed to the program. Python stores it in the sys.argv variable for us.

Remember, the name of the script running is always the first argument in the sys.argv list. So, in this case we will have 'using_sys.py' as sys.argv[0], 'we' as sys.argv[1], 'are' as sys.argv[2] and 'arguments' as sys.argv[3] . Notice that Python starts counting from 0 and not 1.

The sys.path contains the list of directory names where modules are imported from. Observe that the first string in sys.path is empty - this empty string indicates that the current directory is also part of the sys.path which is same as the PYTHONPATH environment variable. This means that you can directly import modules located in the current directory. Otherwise, you will have to place your module in one of the directories listed in `sys.path`. 

<ul class='pager'>
	<li class='previous'><a href='/docs/a-byte-of-python-2/functions/summary.html'>&larr; Previous: Functions Summary</a></li>
	<li class='next'><a href='/docs/a-byte-of-python-2/modules/byte-compiled-pyc-files.html'>Next: Byte-compiled .pyc files &rarr;</a></li>
</ul>
