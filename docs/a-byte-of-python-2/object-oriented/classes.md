<!-- -
Title: A Byte of Python 2: Classes
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
	<li><a href="/docs/a-byte-of-python-2/object-oriented/classes.html">Classes</a></li>
</ol>

Classes
=======

The simplest class possible is shown in the following example:

```python
#!/usr/bin/python
# Filename: simplestclass.py

class Person:
    pass # An empty block

p = Person()
print p
```

#### Output ####

```bash
$ python simplestclass.py
<__main__.Person instance at 0xf6fcb18c>
```

### How It Works ###

We create a new **class** using the `class` statement followed by the name of 
the class. The indented block of statements that follows, forms the body of 
the class. In this case, we have an empty block which is indicated using the 
`pass` statement.

Next, we create an **object/instance** of this class using the name of the 
class followed by a pair of parentheses. We will learn more about 
instantiation in the next section. For our verification, we confirm the type 
of the variable by simply printing it. It tells us that we have an instance of 
the `Person` class in the `__main__` module.

<ul class='pager'>
    <li class='previous'>
        <a href='/docs/a-byte-of-python-2/object-oriented/self.html'>&larr; Previous: The self</a>
    </li>
    <li class='next'>
        <a href='/docs/a-byte-of-python-2/object-oriented/object-methods.html'>Next: Object Methods &rarr;</a>
    <li>
</ul>

Notice that the address of the computer memory where your object is stored is also printed. The address will have a different value on your computer since Python can store the object wherever it finds space. 
