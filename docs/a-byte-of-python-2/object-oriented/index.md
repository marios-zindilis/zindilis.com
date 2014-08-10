<!-- -
Title: A Byte of Python 2: Object Oriented Programming
Author: Swaroop C H
Editor: Marios Zindilis
First Published: 2003
Last Updated: 2014-04-06
- -->

<ol class='breadcrumb' itemprop='breadcrumb'>
	<li><a href="/">Home</a></li>
	<li><a href="/docs/">Docs</a></li>
	<li><a href="/docs/a-byte-of-python-2/">A Byte of Python 2</a></li>
	<li><a href="/docs/a-byte-of-python-2/object-oriented/">Object Oriented Programming</a></li>
</ol>

Object Oriented Programming
===========================

In all your programs so far, you have designed the program around functions or 
blocks of statements which manipulate data. This is called the *procedure oriented* 
way of programming. There is another way of organizing your program which is to 
combine data and functionality and wrap it inside what is called **an object**. 
This is called the **object oriented programming** paradigm. Most of the time 
you can use procedural programming but sometimes when you want to write large 
programs or have a solution that is better suited to it, you can use object 
oriented programming techniques.

Classes and objects are the two main aspecs of object oriented programming. A 
**class** creates a new *type* where **objects** are *instances of the class*. 
An analogy is that you can have variables of type `int` which translates to 
saying that variables that store integers are instances (objects) of the `int` 
class.

<aside class="alert alert-info">
<h4><b>A Note for C/C++/Java/C# Programmers</b></h4>
<p>Note that even integers are treated as objects (of the <code>int</code> 
class). This is unlike C++ and Java (before version 1.5) where integers are 
primitive native types. See <code>help(int)</code> for more details on the 
class.</p>
<p>C# and Java 1.5 programmers will be familiar with this concept since it is 
similar to the boxing and unboxing concept.</p></aside>

Objects can store data using ordinary variables that *belong* to the object. 
Variables that belong to an object or class are called **fields**. Objects can 
also have functionality by using functions that *belong* to a class. Such 
functions are called **methods** of the class. This terminology is important 
because it helps us to differentiate between functions and variables which are 
separate by itself and those which belong to a class or object. Collectively, 
the fields and methods can be referred to as the **attributes** of that class.

Fields are of two types - they can belong to each instance/object of the class 
or they can belong to the class itself. They are called **instance variables** 
and **class variables** respectively.

A class is created using the `class` keyword. The fields and methods of the 
class are listed in an indented block. 

<ul class='pager'>
	<li class='previous'><a href='/docs/a-byte-of-python-2/problem-solving/summary.html'>&larr; Previous: Problem Solving Summary</a></li>
	<li class='next'><a href='/docs/a-byte-of-python-2/object-oriented/self.html'>Next: The self &rarr;</a></li>
</ul>
