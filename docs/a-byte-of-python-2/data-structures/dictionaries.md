<!-- -
Title: A Byte of Python 2: Dictionaries
Author: Swaroop C H
Editor: Marios Zindilis
First Published: 2003
Last Updated: 2014-04-05
- -->

<ol class='breadcrumb' itemprop='breadcrumb'>
	<li><a href="/">Home</a></li>
	<li><a href="/docs/">Docs</a></li>
	<li><a href="/docs/a-byte-of-python-2/">A Byte of Python 2</a></li>
	<li><a href="/docs/a-byte-of-python-2/data-structures/">Data Structures</a></li>
	<li><a href="/docs/a-byte-of-python-2/data-structures/dictionaries.html">Dictionaries</a></li>
</ol>

Dictionaries
============

A **dictionary** is like an address-book, in which you can find the contact 
details of a person by knowing only their name. In other words, it is an 
association of keys (name) to values (details). Note that the key must be 
unique, just like you cannot find out the correct information if you have two 
persons with the exact same name.

Note that you can use only immutable objects (like strings) for the keys of a 
dictionary but you can use either immutable or mutable objects for the values 
of the dictionary. This basically translates to say that you should use only 
simple objects for keys.

Pairs of keys and values are specified in a dictionary by using the notation:

```python
d = {key1 : value1, key2 : value2 }
```

Notice that they key/value pairs are separated by a colon and the pairs are 
separated themselves by commas and all this is enclosed in a pair of curly 
brackets.

Remember that key/value pairs in a dictionary are not ordered in any manner. If 
you want a particular order, then you will have to sort them yourself before 
using it.

The dictionaries that you will be using are instances/objects of the `dict` 
class. 

Using dictionaries
------------------

### Example 9.4: Using dictionaries ###

```python
#!/usr/bin/python
# Filename: using_dict.py

# 'ab' is short for 'a'ddress'b'ook

ab = {		'Swaroop'   : 'swaroopch@byteofpython.info',
		'Larry'     : 'larry@wall.org',
		'Matsumoto' : 'matz@ruby-lang.org',
		'Spammer'   : 'spammer@hotmail.com'
	}

print "Swaroop's address is %s" % ab['Swaroop']

# Adding a key/value pair:
ab['Guido'] = 'guido@python.org'

# Deleting a key/value pair:
del ab['Spammer']

print '\nThere are %d contacts in the address-book\n' % len(ab)

for name, address in ab.items():
	print 'Contact %s at %s' % (name, address)

if 'Guido' in ab: # OR ab.has_key('Guido')
	print "\nGuido's address is %s" % ab['Guido']
```

### Output ###

```bash
$ python using_dict.py
Swaroop's address is swaroopch@byteofpython.info

There are 4 contacts in the address-book

Contact Swaroop at swaroopch@byteofpython.info
Contact Matsumoto at matz@ruby-lang.org
Contact Larry at larry@wall.org
Contact Guido at guido@python.org

Guido's address is guido@python.org
```

How It Works
---

We create the dictionary `ab` using the notation already discussed. We then 
access key/value pairs by specifying the key using the indexing operator as 
discussed in the context of lists and tuples. Observe that the syntax is very 
simple for dictionaries as well.

We can add new key/value pairs by simply using the indexing operator to access 
a key and assign that value, as we have done for Guido in the above case.

We can delete key/value pairs using our old friend - the `del` statement. We 
simply specify the dictionary and the indexing operator for the key to be 
removed and pass it to the del statement. There is no need to know the value 
corresponding to the key for this operation.

Next, we access each key/value pair of the dictionary using the items method of 
the dictionary which returns a list of tuples where each tuple contains a pair 
of items - the key followed by the value. We retrieve this pair and assign it 
to the variables name and address correspondingly for each pair using the 
`for..in` loop and then print these values in the for-block.

We can check if a key/value pair exists using the `in` operator or even the 
`has_key` method of the `dict` class. You can see the documentation for the 
complete list of methods of the `dict` class using `help(dict)`.

Keyword Arguments and Dictionaries
----------------------------------

On a different note, if you have used keyword arguments in your functions, you 
have already used dictionaries! Just think about it - the key/value pair is 
specified by you in the parameter list of the function definition and when you 
access variables within your function, it is just a key access of a dictionary 
(which is called the symbol table in compiler design terminology). 

<ul class='pager'>
	<li class='previous'><a href='/docs/a-byte-of-python-2/data-structures/tuples.html'>&larr; Previous: Tuples</a></li>
	<li class='next'><a href='/docs/a-byte-of-python-2/data-structures/sequences.html'>Next: Sequences &rarr;</a></li>
</ul>
