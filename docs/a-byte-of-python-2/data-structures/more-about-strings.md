<!-- -
Title: A Byte of Python 2: More About Strings
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
	<li><a href="/docs/a-byte-of-python-2/data-structures/more-about-strings.html">More About Strings</a></li></ol>

More About Strings
==================

We have already discussed strings in detail earlier. What more can there be to 
know? Well, did you know that **strings are also objects** and have methods 
which do everything from checking part of a string to stripping spaces?

The strings that you use in a program are all objects of the class `str`. Some 
useful methods of this class are demonstrated in the next example. For a 
complete list of such methods, see `help(str)`.

String Methods
--------------

### Example 9.7: String Methods ###

```python
#!/usr/bin/python
# Filename: str_methods.py

name = 'Swaroop' # This is a string object

if name.startswith('Swa'):
	print 'Yes, the string starts with "Swa"'

if 'a' in name:
	print 'Yes, it contains the string "a"'

if name.find('war') != -1:
	print 'Yes, it contains the string "war"'

delimiter = '_*_'
mylist = ['Brazil', 'Russia', 'India', 'China']
print delimiter.join(mylist)
```

### Output ###

```bash
$ python str_methods.py
Yes, the string starts with "Swa"
Yes, it contains the string "a"
Yes, it contains the string "war"
Brazil_*_Russia_*_India_*_China
```

### How It Works ###

Here, we see a lot of the string methods in action. The `startswith()` method 
is used to find out whether the string starts with the given string. The `in` 
operator is used to check if a given string (also known as substring) is a 
part of the string.

The `find()` method is used to find the position of the given string in the 
string or returns `-1` if it is not successful to find the substring. The `str` 
class also has a neat method to join the items of a sequence with the string 
acting as a delimiter between each item of the sequence and returns a bigger string generated from this.

<ul class='pager'>
	<li class='previous'><a href='/docs/a-byte-of-python-2/data-structures/references.html'>&larr; Previous: References</a></li>
	<li class='next'><a href='/docs/a-byte-of-python-2/data-structures/summary.html'>Next: Data Structures Summary &rarr;</a></li>
</ul>
