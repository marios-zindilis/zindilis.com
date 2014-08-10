<!-- -
Title: A Byte of Python 2: Lists
Author: Swaroop C H
Editor: Marios Zindilis
First Published: 2003
Last Updated: 2014-02-19
- -->

<ol class='breadcrumb' itemprop='breadcrumb'>
	<li><a href="/">Home</a></li>
	<li><a href="/docs/">Docs</a></li>
	<li><a href="/docs/a-byte-of-python-2/">A Byte of Python 2</a></li>
	<li><a href="/docs/a-byte-of-python-2/data-structures/">Data Structures</a></li>
	<li><a href="/docs/a-byte-of-python-2/data-structures/lists.html">Lists</a></li>
</ol>

Lists
=====

A **list** is a data structure that holds an ordered collection of 
items, i.e. you can store a sequence of items in a list. This is easy 
to imagine as a shopping list, where you have a list of items to buy, 
except that you probably have each item on a separate line in your 
shopping list, whereas in Python you put commas in between them.

The list of items should be enclosed in square brackets so that Python 
understands that you are specifying a list. Once you have created a 
list, you can add, remove or search for items in the list. Since we can 
add and remove items, we say that a list is a *mutable data type*, i.e. 
this type can be altered.

A Quick introduction to Objects and Classes
-------------------------------------------

Although, I've been generally delaying the discussion of objects and 
classes till now, a little explanation is needed right now so that you 
can understand lists better. We will still explore this topic in detail 
in its own chapter.

A list is an example of usage of objects and classes. When you use a 
variable `i` and assign a value to it, say integer 5 to it, you can 
think of it as creating an **object** (instance) `i` of **class** (type) 
int. In fact, you can see `help(int)` to understand this better.

A class can also have **methods**, i.e. functions defined for use with 
respect to that class only. You can use these pieces of functionality 
only when you have an object of that class. For example, Python provides 
an `append` method for the list class which allows you to add an item 
to the end of the list. For example, `mylist.append('an item')` will add 
that string to the list `mylist`. Note the use of dotted notation for 
accessing methods of the objects.

A class can also have **fields** which are nothing but variables defined 
for use with respect to that class only. You can use these 
variables/names only when you have an object of that class. Fields are 
also accessed by the dotted notation, for example, `mylist.field`.

Using Lists
-----------

### Example 9.1: Using lists ###

```python
#!/usr/bin/python
# Filename: using_list.py

# This is my shopping list:
shoplist = ['apple', 'mango', 'carrot', 'banana']

print 'I have', len(shoplist), 'items to purchase.'

print 'These items are:', # Notice the comma at end of the line
for item in shoplist:
	print item,

print '\nI also have to buy rice.'
shoplist.append('rice')
print 'My shopping list is now', shoplist

print 'I will sort my list now'
shoplist.sort()
print 'Sorted shopping list is', shoplist

print 'The first item I will buy is', shoplist[0]
olditem = shoplist[0]
del shoplist[0]
print 'I bought the', olditem
print 'My shopping list is now', shoplist
```

### Output ###

```bash
$ python using_list.py
I have 4 items to purchase.
These items are: apple mango carrot banana
I also have to buy rice.
My shopping list is now ['apple', 'mango', 'carrot', 'banana', 'rice']
I will sort my list now
Sorted shopping list is ['apple', 'banana', 'carrot', 'mango', 'rice']
The first item I will buy is apple
I bought the apple
My shopping list is now ['banana', 'carrot', 'mango', 'rice']
```
### How It Works ###

The variable `shoplist` is a shopping list for someone who is going to 
the market. In `shoplist`, we only store strings of the names of the 
items to buy, but remember you can add any kind of object to a list 
including numbers and even other lists.

We have also used the `for..in` loop to iterate through the items of 
the list. By now, you must have realised that a list is also a sequence. 
The speciality of sequences will be discussed in a later section.

Notice that we use a comma at the end of the `print` statement to 
suppress the automatic printing of a line break after every `print` 
statement. This is a bit of an ugly way of doing it, but it is simple 
and gets the job done.

Next, we add an item to the list using the `append` method of the list 
object, as already discussed before. Then, we check that the item has 
been indeed added to the list by printing the contents of the list by 
simply passing the list to the `print` statement which prints it in a 
neat manner for us.

Then, we sort the list by using the `sort` method of the list. 
Understand that this method affects the list itself and does not return 
a modified list - this is different from the way strings work. This is 
what we mean by saying that lists are *mutable* and that strings are 
*immutable*.

Next, when we finish buying an item in the market, we want to remove it 
from the list. We achieve this by using the `del` statement. Here, we 
mention which item of the list we want to remove and the `del` statement 
removes it from the list for us. We specify that we want to remove the 
first item from the list and hence we use `del shoplist[0]` (remember 
that Python starts counting from 0).

If you want to know all the methods defined by the list object, see 
`help(list)` for complete details.

<ul class='pager'>
	<li class='previous'><a href='/docs/a-byte-of-python-2/data-structures/'>&larr; Previous: Data Structures</a></li>
	<li class='next'><a href='/docs/a-byte-of-python-2/data-structures/tuples.html'>Next: Tuples &rarr;</a></li>
</ul>
