<!-- -
Title: A Byte of Python 2: Making your own modules
Author: Swaroop C H
Editor: Marios Zindilis
First Published: 2003
Last Updated: 2014-02-17
- -->

<ol class='breadcrumb' itemprop='breadcrumb'>
        <li><a href="/">Home</a></li>
        <li><a href="/docs/">Docs</a></li>
        <li><a href="/docs/a-byte-of-python-2/">A Byte of Python 2</a></li>
        <li><a href="/docs/a-byte-of-python-2/modules/">Modules</a></li>
        <li><a href="/docs/a-byte-of-python-2/modules/making-your-own-modules.html">Making your own modules</a></li>
</ol>

Making your own modules
=======================

Creating your own modules is easy, you've been doing it all along! 
Every Python program is also a module. You just have to make sure it 
has a `.py` extension. The following example should make it clear.

### Example 8.3: How to create your own module ###

```python
#!/usr/bin/python
# Filename: mymodule.py

def sayhi():
	print 'Hi, this is mymodule speaking.'

version = '0.1'

# End of mymodule.py
```

The above was a sample module. As you can see, there is nothing 
particularly special about it, compared to our usual Python program. 
We will next see how to use this module in our other Python programs.

Remember that the module should be placed in the same directory as the 
program that we import it in, or the module should be in one of the 
directories listed in `sys.path`.

```python
#!/usr/bin/python
# Filename: mymodule_demo.py

import mymodule

mymodule.sayhi()
print 'Version', mymodule.version
```

### Output ###

```bash
$ python mymodule_demo.py
Hi, this is mymodule speaking.
Version 0.1
```

### How It Works ###

Notice that we use the same dotted notation to access members of the 
module. Python makes good reuse of the same notation to give the 
distinctive 'Pythonic' feel to it so that we don't have to keep 
learning new ways to do things.

### Using `from..import` ###

Here is a version utilising the `from..import` syntax.

```python
#!/usr/bin/python
# Filename: mymodule_demo2.py

from mymodule import sayhi, version
# Alternative:
# from mymodule import *

sayhi()
print 'Version', version
```

The output of `mymodule_demo2.py` is same as the output of `mymodule_demo.py`. 

<ul class='pager'>
        <li class='previous'><a href='/docs/a-byte-of-python-2/modules/a-modules-name.html'>&larr; Previous: A module's __name__</a></li>
	<li class='next'><a href='/docs/a-byte-of-python-2/modules/the-dir-function.html'>Next: The dir() function</a><li>
</ul>
