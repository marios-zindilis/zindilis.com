<!-- -
Title: A Byte of Python 2: Control Flow
Author: Swaroop C H
Editor: Marios Zindilis
First Published: 2003
Last Updated: 2014-01-05
- -->

<ol class="breadcrumb" itemprop="breadcrumb">
<li><a href="/">Home</a></li>
<li><a href="/docs/">Docs</a></li>
<li><a href="/docs/a-byte-of-python-2/">A Byte of Python 2</a></li>
<li><a href="/docs/a-byte-of-python-2/control-flow.html">Control Flow</a></li>
</ol>

Control Flow
============

Introduction
------------

All the programs we have seen so far, had a *linear flow*: there has 
always been a series of statements, which Python faithfully executed 
in the same order as they appeared. What 
if you wanted to change the flow of how it works? For example, you want 
the program to take some decisions and do different things depending on 
different situations such as printing 'Good Morning' or 'Good Evening' 
depending on the time of the day?

As you might have guessed, this is achieved using *control flow* 
statements. There are three control flow statements in Python: `if`, 
`for` and `while`.

The `if` statement
------------------

The `if` statement is used to check a condition, and only execute a 
block of statements (called the if-block) if that condition is true. 
If the condition is not true, an alternative block of statements 
(called the else-block) might be executed. The `else` clause is 
optional. 

#### Example 6.1: Using the `if` statement ####

```python
#!/usr/bin/python
# Filename: if.py

number = 23
guess = int(raw_input('Enter an integer : '))

if guess == number:
    print 'Congratulations, you guessed it.' # New block starts here
    print "(but you do not win any prizes!)" # New block ends here
elif guess < number:
    print 'No, it is a little higher than that' # Another block
    # You can do whatever you want in a block ...
else:
    print 'No, it is a little lower than that'
    # you must have guess > number to reach here

print 'Done'
# This last statement is always executed, after the if statement is executed
```

#### Output ####

```bash
$ python if.py
Enter an integer : 50
No, it is a little lower than that
Done
$ python if.py
Enter an integer : 22
No, it is a little higher than that
Done
$ python if.py
Enter an integer : 23
Congratulations, you guessed it.
(but you do not win any prizes!)
Done
```

### How it works ###

This program asks the user to guess a number, and checks if the user 
guessed a specific number (in the above example, the number 23). The 
user's guess is taken with the `raw_input()` function. Functions are 
just reusable pieces of programs. You will learn more about them in 
[the next chapter](/docs/a-byte-of-python-2/functions.html).

The string you supplied to the built-in `raw_input()` function is 
printed to the screen and waits for input from the user. Once the user 
enters something and presses Enter, the function returns the input back 
to the Python program for further processing. In this case, the value 
returned from `raw_input()` is a string, which is then converted to an 
integer using `int()` and then stored in the variable `guess`. Actually, 
the `int` is a class but all you need to know right now is that you can 
use it to convert a string to an integer (assuming the string contains 
a valid integer in the text).

In the next step, the `if` statement compares the `number` that you 
defined (in this case, 23) to the `guess` that the user made. If they 
are equal, it prints a success message. Notice the use of indentation 
levels to tell Python which statements belong to which block. This is 
why indentation is so important in Python. I hope you are sticking to 
'one tab per indentation level' rule. Are you?

Notice how the `if` statement contains a colon at the end - that 
indicates to Python that a block of statements follows.

Then, we check if the guess is less than the number, and if so, we 
inform the user to guess a little higher than that. What we have used 
here is the `elif` clause, which actually combines two related `if 
else-if else` statements into one combined `if-elif-else` statement. 
This makes the program easier and reduces the amount of indentation 
required.

The `elif` and `else` statements must also have a colon at the end of 
the logical line, followed by their corresponding block of statements 
(with proper indentation, of course).

You can have another `if` statement inside the if-block of an `if` 
statement and so on - this is called a <i>nested</i> `if` statement.

Remember that the `elif` and `else` parts are optional. A minival 
valid `if` statement is:

```python
if True:
    print 'Yes, it is true'
```

After Python has finished executing the complete `if` statement along 
with the associated `elif` and `else` clauses, it moves on to the next 
statement in the block containing the `if` statement. In this case, it 
is the main block where execution of the program starts and the next 
statement is the `print 'Done'` statement. After this, Python sees the 
end of the program and simply finishes up.

Although this is a very simple program, I have been pointing out a lot 
of things that you should notice even in this simple program. All these 
are pretty straightforward (and surprisingly simple for those of you 
coming from C/C++ backgrounds) and requires you to become aware of all 
these initially, but after that, you will become comfortable with it and 
it'll feel 'natural' to you.

<aside class="alert alert-info">
<p><b>A note for C/C++ programmers</b></p>
<p>There is no <code>switch</code> statement in Python. You can use an 
<code>if..elif..else</code> statement to do the same thing (and in some 
cases, use a dictionary to do it quickly).</p></aside>

The `while` statement
-------------------

The `while` statement allows you to repeatedly execute a block of 
statements as long as a condition is true. A `while` statement is an 
example of what is called a looping statement. A `while` statement can 
have an optional `else` clause.

#### Example 6.2: Using the while statement ####

```python
#!/usr/bin/python
# Filename: while.py

number = 23
running = True

while running:
    guess = int(raw_input('Enter an integer : '))
    if guess == number:
        print 'Congratulations, you guessed it.'
        running = False # this causes the while loop to stop
    elif guess < number:
        print 'No, it is a little higher than that.'
    else:
        print 'No, it is a little lower than that.'
else:
    print 'The while loop is over.'
    # Do anything else you want to do here

print 'Done'
```

#### Output ####

```bash
$ python while.py
Enter an integer : 50
No, it is a little lower than that.
Enter an integer : 22
No, it is a little higher than that.
Enter an integer : 23
Congratulations, you guessed it.
The while loop is over.
Done
```				
#### How It Works ####

In this program, we are still playing the guessing game, but the 
advantage is that the user is allowed to keep guessing until he guesses 
correctly - there is no need to repeatedly execute the program for each 
guess as we have done previously. This aptly demonstrates the use of the 
`while` statement.

We move the `raw_input()` and `if` statements inside the `while` loop 
and set the variable `running` to `True` before the `while` loop. First, 
we check if the variable `running` is `True` and then proceed to execute 
the corresponding while-block. After this block is executed, the 
condition is again checked which in this case is the `running` variable. 
If it is `True`, we execute the while-block again, else we continue to 
execute the optional else-block and then continue to the next statement.

The `else` block is executed when the `while` loop condition becomes 
`False` - this may even be the first time that the condition is checked. 
If there is an `else` clause for a `while` loop, it is always executed 
unless you have a `while` loop which loops forever without ever breaking 
out!

The `True` and `False` are called Boolean types and you can consider 
them to be equivalent to the values 1 and 0 respecitvely. It's clearer  
to use the words `True` and `False` where the condition checking is 
significant, instead of values `1` and `0`.

The else-block is actually redundant since you can put those statements 
in the same block (as the while statement) after the while statement to 
get the same effect.

<aside class="alert alert-info">
<p><b>A note for C/C++ programmers</b></p>
<p>Remember that you can have an <code>else</code> clause for the 
<code>while</code> loop.</p></aside>

The `for` loop
--------------

The `for..in` statement is another looping statement which iterates 
over a sequence of objects, i.e. goes through each item in a sequence. 
We will see more about sequences in detail in later chapters. What you 
need to know right now is that a sequence is just an ordered collection 
of items. 

#### Example 6.3: Using the `for` statement ####

```python
#!/usr/bin/python
# Filename: for.py

for i in range(1, 5):
    print i
else:
    print 'The for loop is over'
```

#### Output ####

```bash
$ python for.py
1
2
3
4
The for loop is over
```

#### How it works ####

This program prints a sequence of numbers, generated using the built-in 
`range()` function. The `range()` function takes two numbers and returns 
a sequence of numbers starting from the first number and up to the 
second. For example, `range(1,5)` gives the sequence `[1, 2, 3, 4]`. By 
default, `range()` takes a step count of 1. If you supply a third number 
to `range()`, then that becomes the step count. For example, 
`range(1,5,2)` gives `[1,3]`. Notice that the range extends up to the 
second number but does not include it.

The `for` loop then iterates over this range. The line `for i in range(1,5)` 
is equivalent to `for i in [1, 2, 3, 4]` which is like assigning each 
number (or object) in the sequence to `i`, one at a time, and then 
executing the same block of statements for each value of `i`. In this 
case, we just print the value in the block of statements.

Remember that the `else` part is optional. When included, it is always 
executed once after the `for` loop is over unless a `break` statement is 
encountered.

Remember that the `for..in` loop works for any sequence. Here, we have a 
list of numbers generated by the built-in `range()` function, but in 
general we can use any kind of sequence of any kind of objects! We will 
explore this idea in detail in later chapters. 

<aside class="alert alert-info">
<p><b>A note for C/C++/Java/C# Programmers</b></p>
<p>The Python `for` loop is radically different from the C/C++ `for` 
loop. C# programmers will note that the `for` loop in Python is similar 
to the `foreach` loop in C#. Java programmers will note that `for` in 
Python is similar to `for (int i : IntArray)` in Java 1.5.</p>
<p>In C/C++, if you want to write `for (int i = 0; i < 5; i++)`, then 
in Python you write just `for i in range(0,5)`. As you can see, the 
Python `for` loop is simpler, more expressive and less error prone.</p></aside>

The `break` statement
---------------------

The `break` statement is used to break out of a loop, i.e. stop the 
execution of a looping statement, even if the loop condition has not 
yet become False, or the sequence of items has not been exhausted (it 
has not been completely iterated over).

An important note is that if you break out of a `for` or `while` loop, 
any corresponding loop `else` block is <b>not</b> executed.

#### Example 6.4: Using the `break` statement ####

```python
#!/usr/bin/python
# Filename: break.py

while True:
	s = raw_input('Enter something : ')
	if s == 'quit':
		break
	print 'Length of the string is', len(s)
print 'Done'
```

#### Output ####

```bash
$ python break.py
Enter something : Programming is fun
Length of the string is 18
Enter something : When the work is done
Length of the string is 21
Enter something : if you wanna make your work also fun:
Length of the string is 37
Enter something :       use Python!
Length of the string is 12
Enter something : quit
Done
```

#### How it works ####

In this program, we repeatedly take the user's input and print the 
length of each input every time. We are providing a special condition to 
stop the program by checking if the user input is 'quit'. We stop the 
program by **breaking out of the loop** and reach the end of the program.

The length of the input string can be found out using the built-in 
`len()` function.

Remember that the `break` statement can be used with the `for` loop as 
well.

#### G2's Poetic Python ####

The input used in the example is a mini poem that Swaroop C H has 
written, called G2's Poetic Python:

    Programming is fun
    When the work is done
    if you wanna make your work also fun:
        use Python!

The `continue` statement
------------------------

The `continue` statement is used to tell Python to skip the rest of the 
statements in the current loop block and to continue to the next 
iteration of the loop.

#### Example 6.5: Using the `continue` statement ####

```python				
#!/usr/bin/python
# Filename: continue.py

while True:
	s = raw_input('Enter something : ')
	if s == 'quit':
		break
	if len(s) < 3:
		continue
	print 'Input is of sufficient length'
	# Do other kinds of processing here...
```

#### Output ####

```bash
$ python continue.py
Enter something : a
Enter something : 12
Enter something : abc
Input is of sufficient length
Enter something : quit
```

#### How It Works ####

In this program, we accept input from the user, but we process it only 
if it is at least 3 characters long. So, we use the built-in `len()` 
function to get the length, and if the length is less than 3, we skip 
the rest of the statements in the block by using the `continue` 
statement. Otherwise, the rest of the statements in the loop are 
executed and we can do any kind of processing we want to do here.

Note that the `continue` statement works with the `for` loop as well.

Summary
-------

In this chapter on control flow, you have learned how to use the three 
control flow statements: `if`, `for` and `while`. You have also seen the 
use of the `break` and `continue` statements, applicable to `for` and 
`while`. These are some of the most frequently used parts of Python, and 
hence becoming comfortable with them is essential.

In the next chapter, you will learn how to create and use functions.

Read More
---------

*   [Previous Chapter: Operators and Expressions](/docs/a-byte-of-python-2/operators-and-expressions.html)
*   [Next Chapter: Functions](/docs/a-byte-of-python-2/functions.html)
