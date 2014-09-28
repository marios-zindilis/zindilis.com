<!-- -
Title: A Byte of Python 2: Class and Object Variables
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
	<li><a href="/docs/a-byte-of-python-2/object-oriented/class-and-object-variables.html">Class and Object Variables</a></li>
</ol>

Class and Object Variables
==========================

We have already discussed the functionality part of classes and objects, now 
we'll see the data part of it. Actually, they are nothing but ordinary 
variables which are bound to the classes and objects **namespaces**, i.e. the 
names are valid within the context of these classes and objects only.

There are two types of *fields* - class variables and object variables which 
are classified depending on whether the class or the object owns the variables 
respectively.

**Class variables** are shared in the sense that they are accessed by all 
objects (instances) of that class. There is only one copy of the class 
variable and when any one object makes a change to a class variable, the 
change is reflected in all the other instances as well.

**Object variables** are owned by each individual object/instance of the 
class. In this case, each object has its own copy of the field, i.e. they are 
not shared and are not related in any way to the field by the same name in a 
different instance of the same class. An example will make this easy to 
understand.

Using Class and Object Variables
--------------------------------

```python
#!/usr/bin/python
# Filename: objvar.py

class Person:
    '''Represents a person.'''
    population = 0

    def __init__(self, name):
        '''Initializes the person's data.'''
        self.name = name
        print '(Initializing %s)' % self.name

        # When this person is created, he/she
        # adds to the population
        Person.population += 1
	
    def __del__(self):
        '''I am dying.'''
        print '%s says bye.' % self.name

        Person.population -= 1

        if Person.population == 0:
            print 'I am the last one.'
        else:
            print 'There are still %d people left.' % Person.population
	
    def sayHi(self):
        '''Greeting by the person.
		
        Really, that's all it does.'''
        print 'Hi, my name is %s.' % self.name
	
    def howMany(self):
        '''Prints the current population.'''
            if Person.population == 1:
                print 'I am the only person here.'
            else:
                print 'We have %d persons here.' % Person.population

swaroop = Person('Swaroop')
swaroop.sayHi()
swaroop.howMany()

kalam = Person('Abdul Kalam')
kalam.sayHi()
kalam.howMany()

swaroop.sayHi()
swaroop.howMany()
```

### Output ####

```bash
$ python objvar.py
(Initializing Swaroop)
Hi, my name is Swaroop.
I am the only person here.
(Initializing Abdul Kalam)
Hi, my name is Abdul Kalam.
We have 2 persons here.
Hi, my name is Swaroop.
We have 2 persons here.
Abdul Kalam says bye.
There are still 1 people left.
Swaroop says bye.
I am the last one.
```

### How It Works ###

This is a long example but helps demonstrate the nature of class and object 
variables. Here, `population` belongs to the Person class and hence is a 
**class variable**. The `name` variable belongs to the object (it is assigned 
using `self`) and hence is an **object variable**.

Thus, we refer to the `population` class variable as `Person.population` and 
not as `self.population`. Note that an object variable with the same name as a 
class variable will hide the class variable! We refer to the object variable 
name using `self.name` notation in the methods of that object. Remember this 
simple difference between class and object variables.

Observe that the `__init__` method is used to initialize the `Person` instance 
with a name. In this method, we increase the `population` count by 1 since we 
have one more person being added. Also observe that the values of `self.name` 
is specific to each object which indicates the nature of object variables.

Remember, that you must refer to the variables and methods of the same object 
using the self variable only. This is called an **attribute reference**.

In this program, we also see the use of docstrings for classes as well as for 
methods. We can access the class docstring at runtime using `Person.__doc__` 
and the method docstring as `Person.sayHi.__doc__`.

Just like the `__init__` method, there is another special method `__del__` 
which is called when an object is going to die, i.e. it is no longer being 
used and is being returned to the system for reusing that piece of memory. In 
this method, we simply decrease the `Person.population` count by 1.

The `__del__` method is run when the object is no longer in use and there is 
no guarantee when that method will be run. If you want to explicitly do this, 
you just have to use the `del` statement which we have used in previous 
examples.

<aside class="alert alert-info">
<p><b>A note for C++/Java/C# Programmers</b></p>
<p>All class members (including the data members) are public and all the 
methods are virtual in Python.</p>
<p>One exception: If you use data members with names using the double 
underscore prefix such as <code>__privatevar</code>, Python uses name-mangling 
to effectively make it a private variable.</p>
<p>Thus, the convention followed is that any variable that is to be used only 
within the class or object should begin with an underscore and all other names 
are public and can be used by other classes/objects. Remember that this is 
only a convention and is not enforced by Python (except for the double 
underscore prefix).</p>
<p>Also, note that the <code>__del__</code> method is analogous to the concept 
of a destructor.</p></aside>

<ul class='pager'>
    <li class='previous'>
        <a href='/docs/a-byte-of-python-2/object-oriented/init-method.html'>&larr; Previous: The __init__ method</a>
    </li>
    <li class='next'>
        <a href='/docs/a-byte-of-python-2/object-oriented/inheritance.html'>Next: Inheritance &rarr;</a>
    <li>
</ul>

