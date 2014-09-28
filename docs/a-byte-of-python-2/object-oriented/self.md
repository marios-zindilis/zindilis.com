<!-- -
Title: A Byte of Python 2: The self
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
	<li><a href="/docs/a-byte-of-python-2/object-oriented/self.html">The self</a></li>
</ol>

The `self`
==========

Class methods have only one specific difference from ordinary functions - they 
must have an extra first name that has to be added to the beginning of the 
parameter list, but you do do not give a value for this parameter when you 
call the method, Python will provide it. This particular variable refers to 
the object itself, and by convention, it is given the name `self`.

Although, you can give any name for this parameter, it is strongly recommended 
that you use the name self - any other name is definitely frowned upon. There 
are many advantages to using a standard name - any reader of your program will 
immediately recognize it and even specialized IDEs (Integrated Development 
Environments) can help you if you use self.

<aside class="alert alert-info">
<p><b>Note for C++/Java/C# Programmers</b></p>
<p>The <code>self</code> in Python is equivalent to the <code>self</code> 
pointer in C++ and the <code>this</code> reference in Java and C#.</p></aside>

You must be wondering how Python gives the value for `self` and why you don't 
need to give a value for it. An example will make this clear. Say you have a 
class called `MyClass` and an instance of this class called `MyObject`. When 
you call a method of this object as `MyObject.method(arg1, arg2)`, this is 
automatically converted by Python into `MyClass.method(MyObject, arg1, arg2)` - 
this is what the special `self` is all about.

This also means that if you have a method which takes no arguments, then you 
still have to define the method to have a `self` argument. 
