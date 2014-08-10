<!-- -
Title: A Byte of Python 2: Tuples
Author: Swaroop C H
Editor: Marios Zindilis
First Published: 2003
Last Updated: 2014-02-20
- -->

<ol class='breadcrumb' itemprop='breadcrumb'>
	<li><a href="/">Home</a></li>
	<li><a href="/docs/">Docs</a></li>
	<li><a href="/docs/a-byte-of-python-2/">A Byte of Python 2</a></li>
	<li><a href="/docs/a-byte-of-python-2/data-structures/">Data Structures</a></li>
	<li><a href="/docs/a-byte-of-python-2/data-structures/tuples.html">Tuples</a></li>
</ol>

Tuples
======

**Tuples** are just like lists except that they are **immutable** like 
strings i.e. *you cannot modify tuples*. Tuples are defined by 
specifying items separated by commas within a pair of parentheses. 
Tuples are usually used in cases where a statement or a user-defined 
function can safely assume that the collection of values i.e. the tuple 
of values used will not change.

Using Tuples
------------

### Example 9.2: Using Tuples ###

```python
#!/usr/bin/python
# Filename: using_tuple.py

zoo = ('wolf', 'elephant', 'penguin')
print 'Number of animals in the zoo is', len(zoo)

new_zoo = ('monkey', 'dolphin', zoo)
print 'Number of animals in the new zoo is', len(new_zoo)
print 'All animals in new zoo are', new_zoo
print 'Animals brought from old zoo are', new_zoo[2]
print 'Last animal brought from old zoo is', new_zoo[2][2]
```

### Output ###

```bash
$ python using_tuple.py
Number of animals in the zoo is 3
Number of animals in the new zoo is 3
All animals in new zoo are ('monkey', 'dolphin', ('wolf', 'elephant', 'penguin'))
Animals brought from old zoo are ('wolf', 'elephant', 'penguin')
Last animal brought from old zoo is penguin
```

### How It Works ###

The variable `zoo` refers to a tuple of items. We see that the `len()` 
function can be used to get the length of the tuple, in other words, 
the number of elements inside it. This also indicates that a tuple is 
also a sequence.

We are now shifting these animals to a new zoo since the old zoo is 
being closed. Therefore, the `new_zoo` tuple contains some animals 
which are already there along with the animals brought over from the 
old `zoo`. Back to reality, note that a tuple within a tuple does not 
lose its identity.

You can access the items in the tuple by specifying the item's 
position within a pair of square brackets just like you did for lists. 
This is called the **indexing operator**. You access the third item in 
`new_zoo` by specifying `new_zoo[2]` and the third item in the third 
item in the `new_zoo` tuple by specifying `new_zoo[2][2]`. This is 
pretty simple once you've understood the idiom.

A **tuple with 0 items**, also called an empty tuple, is constructed by 
an empty pair of parentheses such as `myempty = ()`. However, **a tuple 
with a single item** is not so simple. You have to specify it using a 
comma following the first (and only) item so that Python can 
differentiate between a tuple and a pair of parentheses surrounding the 
object in an expression i.e. you have to specify `singleton = (2 , )` 
if you mean you want a tuple containing only the item `2`.

#### A note for Perl programmers ####

A list within a list does not lose its identity i.e. lists are not 
flattened as in Perl. The same applies to a tuple within a tuple, or a 
tuple within a list, or a list within a tuple, etc. As far as Python is 
concerned, they are just objects stored using another object, that's 
all.

Tuples and the `print` statement
--------------------------------

One of the most common usage of tuples is with the `print` statement. 
Here is an example:

### Example 9.3L Output using tuples ###

```python
#!/usr/bin/python
# Filename: print_tuple.py

age = 22
name = 'Swaroop'

print '%s is %d years old' % (name, age)
print 'Why is %s playing with that python?' % name
```

### Output ###

```bash
$ python print_tuple.py
Swaroop is 22 years old
Why is Swaroop playing with that python?
```

### How It Works ###

The `print` statement can take a string using certain specifications 
followed by the `%` symbol followed by a tuple of items matching the 
specification. The specifications are used to format the output in a 
certain way. The specification can be like `%s` for strings and `%d` 
for integers. The tuple must have items corresponding to these 
specifications **in the same order**.

Observe the first usage where we use `%s` first and this corresponds 
to the variable `name` which is the first item in the tuple and the 
second specification is `%d` corresponding to age which is the second 
item in the tuple.

What Python does here is that it converts each item in the tuple into 
a string and substitutes that string value into the place of the 
specification. Therefore the `%s` is replaced by the value of the 
variable `name` and so on.

This usage of the `print` statement makes writing output extremely easy 
and prevents lot of string manipulation to achieve the same result. It 
also prevents using commas everywhere as we have done till now.

Most of the time, you can just use the `%s` specification and let Python 
take care of the rest for you. This works even for numbers. However, you 
may want to give the correct specifications since this adds one level of 
checking that your program is correct.

In the second `print` statement, we are using a single specification 
followed by the `%` symbol followed by a single item - there are no pair 
of parentheses. This works only in the case where there is a single 
specification in the string. 

<ul class='pager'>
	<li class='previous'><a href='/docs/a-byte-of-python-2/data-structures/lists.html'>&larr; Previous: Lists</a></li>
	<li class='next'><a href='/docs/a-byte-of-python-2/data-structures/dictionaries.html'>Next: Dictionaries &rarr;</a></li>
</ul>
