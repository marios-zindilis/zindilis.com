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
&gt;&gt;&gt; print ("Hello, World!")
```

What happened? You just created a program, that prints the words 'Hello, 
World!'. The IDLE environment that you are in immediately compiles whatever you 
have typed in. This is useful for testing things, e.g., defining a few 
variables, and then testing to see if a certain line will work. That will come 
in a later lesson though.

Math in Python
--------------

Now try the following examples. The lines that start with `#` are comments, and 
they are used to explain the code that follows them.

#### Code Example 2: Math ####

```python
&gt;&gt;&gt; # These are additions:
&gt;&gt;&gt; 1 + 1
2
&gt;&gt;&gt; 20 + 80
100
&gt;&gt;&gt; 18294 + 449566
467860
&gt;&gt;&gt;
&gt;&gt;&gt; # This is a subtraction:
&gt;&gt;&gt; 6 - 5
1
&gt;&gt;&gt;
&gt;&gt;&gt; # A multiplication:
&gt;&gt;&gt; 2 * 5
10
&gt;&gt;&gt;
&gt;&gt;&gt; # An exponential, this is 5 squared:
&gt;&gt;&gt; 5 ** 2
25
&gt;&gt;&gt; # A print statement, that writes something onscreen. Notice that 
&gt;&gt;&gt; # 1 + 2 is not evaluated:
&gt;&gt;&gt; print ("1 + 2 is an addition")
1 + 2 is an addition
&gt;&gt;&gt;
&gt;&gt;&gt; # You can print sums and variables in a sentence. The commas 
&gt;&gt;&gt; # separating each section are a way of	separating clearly 
&gt;&gt;&gt; # different things that you are printing:
&gt;&gt;&gt; print ("One kilobyte is 2^10 bytes, or", 2 ** 10, "bytes.")
One kilobyte is 2^10 bytes, or 1024 bytes.
&gt;&gt;&gt;
&gt;&gt;&gt; # Note how Python ignores remainders/decimals in divisions:
&gt;&gt;&gt; 21 / 3
7
&gt;&gt;&gt; 23 / 3
7
&gt;&gt;&gt;
&gt;&gt;&gt; # This time, since the numbers are decimals themselves, the answer
&gt;&gt;&gt; # will be a decimal:
&gt;&gt;&gt; 23.0 / 3.0
7.666666666666667
&gt;&gt;&gt;
&gt;&gt;&gt; # The remainder from a division:
&gt;&gt;&gt; 23 % 3
2
&gt;&gt;&gt; 49 % 10
9
```

As you can see, there is a comment that explains the code that follows it, then 
there is the code, and finally the result of that code. These are the basic 
commands of Python, and what they do. Here is a table to clarify them:

<table class='table'>
  <thead>
    <tr>
      <th>Command</th>
      <th>Name</th>
      <th>Example</th>
      <th>Output</th>
    </tr>
  </thead>
  <tbody>
    <tr>
      <td>+</td>
      <td>Addition</td>
      <td><code>4 + 5</code></td>
      <td><code>9</code></td>
    </tr>
    <tr>
      <td>-</td>
      <td>Subtraction</td>
      <td><code>8 - 5</code></td>
      <td><code>3</code></td>
    </tr>
    <tr>
      <td>*</td>
      <td>Multiplication</td>
      <td><code>4 * 5</code></td>
      <td><code>20</code></td>
    </tr>
    <tr>
      <td>/</td>
      <td>Division</td>
      <td><code>19 / 3</code></td>
      <td><code>6</code></td>
    </tr>
    <tr>
      <td>%</td>
      <td>Modulo</td>
      <td><code>19 % 3</code></td>
      <td><code>1</code></td>
    </tr>
    <tr>
      <td>**</tr>
      <td>Exponent</td>
      <td><code>2 ** 4</code></td>
      <td><code>14</code></td>
    </tr>
  </tbody>
</table>

Remember that thing called **order of operations** that they taught in maths? 
Well, it applies in Python, too. Here it is, if you need reminding:

1.  parentheses ()
2.  exponents **
3.  multiplication *, division /, and remainder %
4.  addition + and subtraction -

Order of Operations
-------------------

Here are some examples that you might want to try, if you're rusty on this:

#### Code Example 3: Order of operations ####

```python
&gt;&gt;&gt; 1 + 2 * 3
7
&gt;&gt;&gt; (1 + 2) * 3
9
```

In the first example, the computer calculates <code>2 * 3</code> first, then 
adds <code>1</code> to it. This is because multiplication has the higher 
priority (at 3) and addition is below that (at a lowly 4).

In the second example, the computer calculates <code>1 + 2</code> first, then 
multiplies it by 3. This is because parentheses (brackets, like the ones that 
are surrounding this interluding text) have the higher priority (at 1), and 
addition comes in later than that.

Also remember that the math is calculated from left to right, *unless* you put 
in parentheses. The innermost parentheses are calculated first. Watch these 
examples:

#### Code Example 4: Parentheses ####

```python
&gt;&gt;&gt; 4 - 40 - 3
-39
&gt;&gt;&gt; 4 - (40 - 3)
-33
```

In the first example, <code>4 - 40</code> is calculated,then <code>- 3</code> 
is done.

In the second example, <code>40 - 3</code> is calculated, then it is subtracted 
from <code>4</code>.

Comments, Please
----------------

The final thing you'll need to know to move on to multi-line programs is the 
**comment**. You should always add comments to code to show others who might be 
reading your code what you've done and why. Type the following (and yes, the 
output is shown):

#### Code Example 5: Comments ####

```python
&gt;&gt;&gt; #I am a comment. Fear my wrath!

&gt;&gt;&gt;
```

A comment is a piece of code that is not run. In Python, you make something a 
comment by putting a hash (<code>#</code>) in front of it. A hash comments 
everything after it in the line, and nothing before it. So you could type this:

#### Code Example 6: Comment examples ####

```python
&gt;&gt;&gt; print ("food is very nice") #eat me
food is very nice
```

&hellip;then you only get the output of <code>print</code>, without the 
comment. However when you type the following:

```python
&gt;&gt;&gt; # print "food is very nice"
```

&hellip;then nothing happens, because the code was after a comment. Finally, 
if you run the following:


```python
&gt;&gt;&gt; print "food is very nice" eat me
```

&hellip;then you'll get a fairly harmless error message, because you didn't put 
your comment after a hash.

Comments are important for adding necessary information for another programmer 
to read, but not the computer; for example, an explanation of a section of 
code, saying what it does, or what is wrong with it. You can also comment out 
bits of code if you don't want them to compile, but can't delete them because 
you might need them later.
