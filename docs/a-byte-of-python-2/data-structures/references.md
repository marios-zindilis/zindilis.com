<!-- -
Title: A Byte of Python 2: References
Author: Swaroop C H
Editor: Marios Zindilis
First Published: 2003
Last Updated: 2014-04-06
- -->

<ol class='breadcrumb' itemprop='breadcrumb'>
	<li><a href="/">Home</a></li>
	<li><a href="/docs/">Docs</a></li>
	<li><a href="/docs/a-byte-of-python-2/">A Byte of Python 2</a></li>
	<li><a href="/docs/a-byte-of-python-2/data-structures/">Data Structures</a></li>
	<li><a href="/docs/a-byte-of-python-2/data-structures/references.html">References</a></li>
</ol>

References
==========

When you create an object and assign it to a variable, the variable only 
*refers* to the object and does not represent the object itself! That is, the
variable name points to that part of your computer's memory where the object is stored. This is called as **binding** of the name to the object.

Generally, you don't need to be worried about this, but there is a subtle 
effect due to references which you need to be aware of. This is demonstrated by 
the following example.

Objects and References
----------------------

### Example 9.6: Objects and References ###

```python
#!/usr/bin/python
# Filename: reference.py

print 'Simple Assignment'
shoplist = ['apple', 'mango', 'carrot', 'banana']
mylist = shoplist # mylist is just another name pointing to the same object!

del shoplist[0] # I purchased the first item, so I remove it from the list

print 'shoplist is', shoplist
print 'mylist is', mylist
# notice that both shoplist and mylist both print the same list without
# the 'apple' confirming that they point to the same object

print 'Copy by making a full slice'
mylist = shoplist[:] # make a copy by doing a full slice
del mylist[0] # remove first item

print 'shoplist is', shoplist
print 'mylist is', mylist
# notice that now the two lists are different
```

### Output ###

```bash
$ python reference.py
Simple Assignment
shoplist is ['mango', 'carrot', 'banana']
mylist is ['mango', 'carrot', 'banana']
Copy by making a full slice
shoplist is ['mango', 'carrot', 'banana']
mylist is ['carrot', 'banana']
```

### How it works ###

Most of the explanation is available in the comments themselves. What you need 
to remember is that if you want to make a **copy** of a list or such kinds of 
sequences or complex objects (not simple *objects* such as integers), then you 
have to use the slicing operation to make a copy. If you just assign the 
variable name to another name, both of them will **refer to the same object** 
and this could lead to all sorts of trouble if you are not careful.

<aside class="alert alert-info">
<p><b>A note for Perl programmers</b></p>
<p>Remember that an assignment statement for lists does not create a copy. You 
have to use slicing operation to make a copy of the sequence.</p></aside>

<ul class='pager'>
	<li class='previous'><a href='/docs/a-byte-of-python-2/data-structures/sequences.html'>&larr; Previous: Sequences</a></li>
	<li class='next'><a href='/docs/a-byte-of-python-2/data-structures/more-about-strings.html'>Next: More about Strings &rarr;</a></li>
</ul>
