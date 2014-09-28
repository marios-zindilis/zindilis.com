<!-- -
Title: A Byte of Python 2: The __init__ method
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
	<li><a href="/docs/a-byte-of-python-2/object-oriented/init-method.html">The __init__ method</a></li>
</ol>

The `__init__` method
=====================

There are many method names which have special significance in Python classes. 
We will see the significance of the `__init__` method now.

The `__init__` method is run as soon as an object of a class is instantiated. 
The method is useful to do any initialization you want to do with your object. 
Notice the double underscore both in the beginning and at the end in the name.

Using the `__init__` method
---------------------------

```python
#!/usr/bin/python
# Filename: class_init.py

class Person:
    def __init__(self, name):
        self.name = name
    def sayHi(self):
        print 'Hello, my name is', self.name

p = Person('Swaroop')
p.sayHi()

# This short example can also be written as Person('Swaroop').sayHi()
```

#### Output ####

```bash
$ python class_init.py
Hello, my name is Swaroop
```

### How It Works ###

Here, we define the `__init__` method as taking a parameter called `name` 
(along with the usual `self`), and we just create a new field also called 
`name`. Notice these are two different variables even though they have the 
same name. The dotted notation allows us to differentiate between them.

Most importantly, notice that we do not explicitly call the `__init__` method 
but pass the arguments in the parentheses following the class name when 
creating a new instance of the class. This is the special significance of this 
method.

Now, we are able to use the `self.name` field in our methods which is 
demonstrated in the `sayHi()` method.

<aside class="alert alert-info">
<p><b>A note for C++/Java/C# Programmers</b></p>
<p>The <code>__init__</code> method is analogous to a constructor in C++, C# 
or Java.</p></aside>

<ul class='pager'>
    <li class='previous'>
        <a href='/docs/a-byte-of-python-2/object-oriented/object-methods.html'>&larr; Previous: Object Methods</a>
    </li>
    <li class='next'>
        <a href='/docs/a-byte-of-python-2/object-oriented/class-and-object-variables.html'>Next: Class and Object Variables &rarr;</a>
    <li>
</ul>
