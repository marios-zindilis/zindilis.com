<!-- -
Title: A Byte of Python 2: Object Methods
Author: Swaroop C H
Editor: Marios Zindilis
First Published: 2003
Last Updated: 2014-09-28
- -->

<ol class='breadcrumb' itemprop='breadcrumb'>
	<li><a href="/">Home</a></li>
	<li><a href="/docs/">Docs</a></li>
	<li><a href="/docs/a-byte-of-python-2/">A Byte of Python 2</a></li>
	<li><a href="/docs/a-byte-of-python-2/object-oriented/">Object Oriented Programming</a></li>
	<li><a href="/docs/a-byte-of-python-2/object-oriented/object-methods.html">Object Methods</a></li>
</ol>

Object Methods
==============

We have already discussed that classes/objects can have methods just like 
functions except that we have an extra self variable. We will now see an 
example.

```python
#!/usr/bin/python
# Filename: method.py

class Person:
    def sayHi(self):
        print 'Hello, how are you?'

p = Person()
p.sayHi()

# This short example can also be written as Person().sayHi()
```

#### Output ####

```bash
$ python method.py
Hello, how are you?
```

### How It Works ###

Here we see the `self` in action. Notice that the `sayHi()` method takes no 
parameters but still has the `self` in the function definition.

<ul class='pager'>
    <li class='previous'>
        <a href='/docs/a-byte-of-python-2/object-oriented/classes.html'>&larr; Previous: Classes</a>
    </li>
    <li class='next'>
        <a href='/docs/a-byte-of-python-2/object-oriented/init-method.html'>Next: The __init__ Method &rarr;</a>
    <li>
</ul>
