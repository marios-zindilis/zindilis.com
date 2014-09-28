<!-- -
Title: A Byte of Python 2: Functions
Author: Swaroop C H
Editor: Marios Zindilis
First Published: 2003
Last Updated: 2014-02-14
- -->

<ol class="breadcrumb">
<li><a href="/">Home</a></li>
<li><a href="/docs/">Docs</a></li>
<li><a href="/docs/a-byte-of-python-2/">A Byte of Python 2</a></li>
<li><a href="/docs/a-byte-of-python-2/functions/">Functions</a></li>
</ol>

Functions
=========

Introduction
------------

Functions are reusable pieces of programs. They allow you to give a name 
to a block of statements and you can run that block using that name 
anywhere in your program and any number of times. This is known as 
*calling the function*. We have already used a few built-in functions in 
the previous chapters, such as `len()` and `range()`.

Functions are **defined** using the `def` keyword. This is followed by 
an *identifier name* for the function, followed by a pair of parentheses 
which may enclose some names of variables and the line ends with a colon. 
Next follows the block of statements that are part of this function. An 
example will show that this is actually very simple.

#### Example 7.1: Defining a function ####

```python
#!/usr/bin/python
# Filename: function1.py

def sayHello():
	print 'Hello World!' # block belonging to the function
# End of function

sayHello() # call the function
```

#### Output ####

```bash
$ python function1.py
Hello World!
```

#### How it works ####

We define a function called `sayHello()` using the syntax as explained 
above. This function takes no parameters and hence there are no 
variables declared in the parentheses. Parameters to functions are just 
input to the function so that we can pass in different values to it and 
get back corresponding results.

Function Parameters
-------------------

A function can take parameters which are just values you supply to the 
function so that the function can do something utilising those values. 
These parameters are just like variables, except that the values of 
these variables are defined when we *call the function* and are not 
assigned values within the function itself.

Parameters are specified within the pair of parentheses in the function 
definition, separated by commas. When we call the function, we supply 
the values in the same way. Note the terminology used - the names given 
in the function definition are called parameters whereas the values you 
supply in the function call are called arguments.

#### Example 7.2: Using Function Parameters ####

```python
#!/usr/bin/python
# Filename: func_param.py

def printMax(a, b):
	if a > b:
		print a, 'is maximum'
	else:
		print b, 'is maximum'

printMax(3, 4) # directly give literal values

x = 5
y = 7

printMax(x, y) # give variables as arguments
```

#### Output ###

```bash
$ python func_param.py
4 is maximum
7 is maximum
```

#### How It Works ####

Here, we define a function called `printMax()` where we take two 
parameters called `a` and `b`. We find out the greater number using a 
simple `if..else` statement and then print the bigger number.

In the first usage of `printMax()`, we directly supply the numbers i.e. 
arguments. In the second usage, we call the function using variables. 
`printMax(x, y)` causes the value of argument `x` to be assigned to 
parameter `a` and the value of argument `y` assigned to parameter `b`. 
the `printMax()` function works the same in both the cases.

Local Variables
---------------

When you declare variables inside a function definition, they are not 
related in any way to other variables with the same names used outside 
the function i.e. variable names are *local* to the function. This is 
called the *scope of the variable*. All variables have the scope of 
the block they are declared in, starting from the point of definition 
of the name. 

#### Example 7.3: Using Local Variables ####

```python
#!/usr/bin/python
# Filename: func_local.py

def func(x):
	print 'x is', x
	x = 2
	print 'Changed local x to', x

x = 50
func(x)
print 'x is still', x
```

#### Output ####

```bash
$ python func_local.py
x is 50
Changed local x to 2
x is still 50
```

#### How it works ####

In the `func()` function, the first time that we use the value of the 
name `x`, Python uses the value of the parameter declared in the 
function.

Next, we assign the value 2 to `x`. The name `x` is local to our 
function. So, when we change the value of `x` in the function, the `x` 
defined in the main block remains unaffected.

In the last `print` statement, we confirm that the value of `x` in the 
main block is actually unaffected. 			

Using the global statement
--------------------------

If you want to assign a value to a name defined outside the function, 
then you have to tell Python that the name is not local, but it is 
*global*. We do this using the `global` statement. It is impossible to 
assign a value to a variable defined outside a function without the 
global statement.

You can use the values of such variables defined outside the function 
(assuming there is no variable with the same name within the function). 
However, this is not encouraged and should be avoided since it becomes 
unclear to the reader of the program as to where that variable's 
definition is. Using the `global` statement makes it amply clear that 
the variable is defined in an outer block.

#### Example 7.4: Using the `global` statement ####

```python
#!/usr/bin/python
# Filename: func_global.py

def func():
	global x
	print 'x is', x
	x = 2
	print 'Changed global x to', x

x = 50
func()
print 'Value of x is', x
```

#### Output ####

```bash
$ python func_global.py
x is 50
Changed global x to 2
Value of x is 2
```

#### How It Works ####

The `global` statement is used to declare that `x` is a global variable 
- hence, when we assign a value to `x` inside the function, that change 
is reflected when we use the value of `x` in the main block.

You can specify more than one global variables in the same logical line, 
using the same `global` statement. For example, `global x, y, z`. 

Default Argument Values
-----------------------

For some functions, you may want to make some of its parameters as 
optional and use default values if the user does not want to provide 
values for such parameters. This is done with the help of default 
argument values. You can specify default argument values for parameters 
by following the parameter name in the function definition with the 
assignment operator (`=`) followed by the default value.

Note that the default argument value should be a constant. More 
precisely, the default argument value should be immutable - this is 
explained in detail in later chapters. For now, just remember this. 

Using Default Argument Values
-----------------------------

### Example 7.5: Using Default Argument Values ###

```python
#!/usr/bin/python
# Filename: func_default.py

def say(message, times = 1):
	print message * times

say('Hello')
say('World', 5)
```

### Output ###

```bash
$ python func_default.py
Hello
WorldWorldWorldWorldWorld
```

### How It Works ###

The function named `say()` is used to print a string as many times as 
you want. If you don't supply a value, then by default, the string is 
printed just once. You achieve this by specifying a default argument 
value of 1 to the parameter `times`.

In the first usage of `say()`, you supply only the string and it prints 
the string once. In the second usage of `say()`, you supply both the 
string and an argument `5` stating that you want to *say* the string 
message 5 times.

<aside class="alert alert-info">
<p><b>Important</b></p>
<p>Only those parameters which are at the end of the parameter list can be 
given default argument values, i.e. you cannot have a parameter with a 
default argument value before a parameter without a default argument 
value in the order of parameters declared in the function parameter list.</p>
<p>This is because the values are assigned to the parameters by position. 
For example, `def func(a, b=5)` is valid, but `def func(a=5, b)` is not 
valid.</p></aside>

Keyword Arguments
-----------------

If you have some functions with many parameters and you want to specify 
only some of them, then you can give values for such parameters by 
naming them - this is called *keyword arguments* - we use the name 
(keyword) instead of the position (which we have been using all along) 
to specify the arguments to the function.

There are two advantages - one, using the function is easier since we 
do not need to worry about the order of the arguments. Two, we can give 
values to only those parameters which we want, provided that the other 
parameters have default argument values.

### Example 7.6: Using Keyword Arguments ###

```python
#!/usr/bin/python
# Filename: func_key.py

def func(a, b=5, c=10):
	print 'a is', a, 'and b is', b, 'and c is', c

func(3, 7)
func(25, c=24)
func(c=50, a=100)
```
				
### Output ###

```bash
$ python func_key.py
a is 3 and b is 7 and c is 10
a is 25 and b is 5 and c is 24
a is 100 and b is 5 and c is 50
```
				
### How It Works ###

The function named `func()` has one parameter without default 
argument values, followed by two parameters with default argument 
values.

In the first usage, `func(3, 7)`, the parameter `a` gets the value `3`, 
the parameter `b` gets the value `5` and `c` gets the default value of 
`10`.

In the second usage `func(25, c=24)`, the variable `a` gets the value 
of `25` due to the position of the argument. Then, the parameter `c` 
gets the value of `24` due to naming i.e. keyword arguments. The 
variable `b` gets the default value of `5`.

Finally, in the third usage `func(c=50, a=100)`, we use keyword 
arguments completely to specify the values. Notice, that we are 
specifying value for parameter `c` before that for `a` even though 
`a` is defined before `c` in the function definition. 

The `return` statement
----------------------

The `return` statement is used to return from a function i.e. break out 
of the function. We can optionally return a value from the function as 
well.

### Example 7.7: Using the literal statement ###

```python
#!/usr/bin/python
# Filename: func_return.py

def maximum(x, y):
	if x > y:
		return x
	else:
		return y

print maximum(2, 3)
```

### Output ###

```bash
$ python func_return.py
3
```

### How It Works ###

The `maximum()` function returns the maximum of the parameters, in this 
case the numbers supplied to the function. It uses a simple `if..else` 
statement to find the greater value and then **returns** that value.

Note that a `return` statement without a value is equivalent to `return None`. 
`None` is a special type in Python that represents nothingness. For 
example, it is used to indicate that a variable has no value if it has 
a value of `None`.

Every function implicitly contains a `return None` statement at the end 
unless you have written your own `return` statement. You can see this by 
running `print someFunction()` where the function `someFunction()` does 
not use the `return` statement such as:

```python
def someFunction():
	pass
```

The `pass` statement is used in Python to indicate an empty block of statements.

<ul class='pager'>
	<li class='previous'><a href='/docs/a-byte-of-python-2/control-flow.html'>&larr; Previous: Control Flow</a></li>
	<li class='next'><a href='/docs/a-byte-of-python-2/functions/docstrings.html'>Next: Docstrings &rarr;</a></li>
</ul>
