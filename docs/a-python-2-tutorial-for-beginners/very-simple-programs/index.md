<!-- -
Title: Very Simple Programs
Description: A beginner level tutorial with very simple Python 2 programs
- -->

<ol class="breadcrumb">
  <li><a href="/">Home</a></li>
  <li><a href="/docs/">Docs</a></li>
  <li><a href="/docs/a-python-2-tutorial-for-beginners/">
    A Python 2 Tutorial for Beginners</a></li>
  <li><a href="/docs/a-python-2-tutorial-for-beginners/very-simple-programs/">
    Very Simple Programs</a></li>
</ol>

Very Simple Programs
====================

OK! We have Python installed, now what? Well, we program!

And it is that simple (at least for now!). Python makes it easy to run single 
lines of code -- one-liner programs. Let's give it a go.

Opening IDLE
------------

Run the program labelled **IDLE** (IDLE stands for **I**ntegrated 
**D**eve**l**opment **E**nvironment). Now you are in the IDLE environment. This 
is the place you will be spending most time in. Here you can open a new window 
to write a program, or you can simply mess around with single lines of code, 
which is what we are going to do. 

Type the following and press <kbd>Enter</kbd>. Don't type the `>>>` part, as it 
will already be there. Also note that in Python 2 the parentheses are optional 
after `print` but in Python 3.0 they are required.

#### Code Example 1: Hello, World! ####
```python
>>> print ("Hello, World!")
```
<!--
What happened? You just created a program, that prints the words 'Hello, world'. The IDLE environment that you are in immediately compiles whatever you have typed in. This is useful for testing things, e.g., defining a few variables, and then testing to see if a certain line will work. That will come in a later lesson though.

== Math in Python ==

Now try the following examples. I've given explanations in parentheses.

;Code Example 2 – Maths
<pre>
>>> 1 + 1
2

>>> 20 + 80
100

>>> 18294 + 449566
467860
(These are additions.)

>>> 6 - 5
1
(Subtraction)

>>> 2 * 5
10
(Multiplication)

>>> 5 ** 2
25
(Exponentials; e.g., this one is 5 squared)

>>> print ("1 + 2 is an addition")
1 + 2 is an addition
(The print statement, which writes something onscreen. Notice that 1 + 2 is left unevaluated.)

>>> print ("One kilobyte is 2^10 bytes, or", 2 ** 10, "bytes.")
One kilobyte is 2^10 bytes, or 1024 bytes.
(You can print sums and variables in a sentence.
	The commas separating each section are a way of
	separating clearly different things that you are printing.)

>>> 21 / 3
7

>>> 23 / 3
7
(Division; note that Python ignores remainders/decimals.)

>>> 23.0 / 3.0
7.666666666666667
(This time, since the numbers are decimals themselves, the answer
	will be a decimal.)

>>> 23 % 3
2

>>> 49 % 10
9
(The remainder from a division)
</pre>

As you see, there is the code, then the result of that code. I then explain them in brackets. These are the basic commands of Python, and what they do. Here is a table to clarify them.

{| width=40% border=1
  |+ Table 1 – Python operators
|-
  ! Command
  ! Name
  ! Example
  ! Output
|-
|<nowiki>+</nowiki>
|Addition
|4 + 5
|9
|-
|<nowiki>-</nowiki>
|Subtraction
|8 - 5
|3
|-
|*
|Multiplication
|4 * 5
|20
|-
|/
|Division
|19 / 3
|6
|-
|%
|Remainder ([[w:modulous|modulo]])
|19 % 3
|1
|-
|**
|Exponent
|2 ** 4
|16
|}

Remember that thing called [[w:order of operations|order of operations]] that they taught in maths? Well, it applies in Python, too. Here it is, if you need reminding:

# parentheses ()
# exponents **
# multiplication *, division /, and remainder %
# addition + and subtraction -

== Order of Operations ==

Here are some examples that you might want to try, if you're rusty on this:

;Code Example 3 – Order of operations
<pre lang="python">
>>> 1 + 2 * 3
7
>>> (1 + 2) * 3
9
</pre>

In the first example, the computer calculates 2 * 3 first, then adds 1 to it. This is because multiplication has the higher priority (at 3) and addition is below that (at a lowly 4).

In the second example, the computer calculates 1 + 2 first, then multiplies it by 3. This is because parentheses (brackets, like the ones that are surrounding this interluding text ;) ) have the higher priority (at 1), and addition comes in later than that.

Also remember that the math is calculated from left to right, ''unless'' you put in parentheses. The innermost parentheses are calculated first. Watch these examples:

;Code Example 4 – Parentheses
<pre lang="python">
>>> 4 - 40 - 3
-39
>>> 4 - (40 - 3)
-33
</pre>

In the first example, 4 - 40 is calculated,then - 3 is done.

In the second example, 40 - 3 is calculated, then it is subtracted from 4.

== Comments, Please ==

The final thing you'll need to know to move on to multi-line programs is the [[w:comment (computer programming)|comment]]. You should always add comments to code to show others who might be reading your code what you've done and why. Type the following (and yes, the output is shown):

;Code Example 5 – Comments
<pre lang="python">
>>> #I am a comment. Fear my wrath!

>>>
</pre>

A comment is a piece of code that is not run. In Python, you make something a comment by putting a hash (#) in front of it. A hash comments everything after it in the line, and nothing before it. So you could type this:

;Code Example 6 – Comment examples
<pre>
>>> print ("food is very nice") #eat me
food is very nice
(A normal output, without the smutty comment,
thank you very much)

>>># print "food is very nice"

(Nothing happens, because the code was after a comment)

>>> print "food is very nice" eat me

(You'll get a fairly harmless error message,
because you didn't put your comment after a hash)
</pre>

Comments are important for adding necessary information for another programmer to read, but not the computer; for example, an explanation of a section of code, saying what it does, or what is wrong with it. You can also comment out bits of code if you don't want them to compile, but can't delete them because you might need them later.

-->
