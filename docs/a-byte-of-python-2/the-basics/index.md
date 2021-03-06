<!-- -
Title: A Byte of Python 2: The Basics
Description: A Byte of Python 2: The Basics
Author: Swaroop C H
Editor: Marios Zindilis
First Published: 2003
Last Updated: 2014-09-28
- -->

<ol class="breadcrumb">
<li><a href="/">Home</a></li>
<li><a href="/docs/">Docs</a></li>
<li><a href="/docs/a-byte-of-python-2/">A Byte of Python 2</a></li>
<li><a href="/docs/a-byte-of-python-2/the-basics.html">The Basics</a></li>
</ol>

The Basics
==========

Just printing 'Hello, World!' is not enough, is it? You want to do more than 
that - you want to take some input, manipulate it and get something out of it. 
You can achieve this in Python using **constants** and **variables**.

Literal Constants
-----------------

An example of a literal constant is a number like `5`, `1.23`, `9.25e-3` or a 
string like `'This is a string'` or `"It's a string!"`. It is called a 
literal because it is literal - you use its value literally. The number 
2 always represents itself and nothing else - it is a constant because 
its value cannot be changed. Hence, all these are referred to as literal 
constants.

Numbers
-------

Numbers in Python are of four types - integers, long integers, floating point 
and complex numbers.

1.  Examples of integers are `2` and `5`, which are just whole numbers.
2.  Long integers are just bigger whole numbers.
3.  Examples of floating point numbers (or floats for short) are `3.23` and 
    `52.3E-4`. The E notation indicates powers of 10. In this case, `52.3E-4` 
    means `52.3 * 10^4`.
4.  Examples of complex numbers are `(-5+4j)` and `(2.3 - 4.6j)`.

Strings
-------

A string is a sequence of characters. Strings are basically just a 
bunch of words.

I can almost guarantee that you will be using strings in almost every 
Python program that you write, so pay attention to the following part. 
Here's how you use strings in Python:

*   <b>Using Single Quotes (')</b>

    You can specify strings using single quotes such as 'Quote me on 
    this' . All white space, i.e. spaces and tabs inside the strins are 
    preserved as-is.
*   <b>Using Double Quotes (")</b>

    Strings in double quotes work exactly the same way as strings in 
    single quotes. An example is "What's your name?"
*   <b>Using Triple Quotes (''' or """)</b>

    You can specify multi-line strings using triple quotes. You can use 
    either single quotes and double quotes freely within the triple 
    quotes. An example is:
    				
        '''This is a multi-line string. This is the first line.
        This is the second line.
        "What's your name?," I asked.
        He said "Bond, James Bond."
        '''
*   <b>Escape Sequences</b>

    Suppose that you want to have a string which contains a single quote 
    ('), how will you specify this string? For example, the string is 
    `What's your name?`. You cannot specify `'What's your name?'` 
    because that single quote in the middle of the string will confuse 
    Python as to where the string starts and ends. So, you will have to 
    somehow specify that this single quote does <b>not</b> indicate the 
    end of the string. This can be done with the help of what is called 
    an *escape sequence*. You specify the single quote as `\'` - notice 
    the backslash. Now, you can specify the string as `'What\'s your name?'`.

    Another way of specifying this specific string would be `"What's your 
    name?"`, i.e. using double quotes to enclose a string that contains 
    single ones. Similarly, you have to use an escape sequence for using 
    a double quote itself in a double quoted string. Also, you have to 
    indicate the backslash itself using the escape sequence <code>\\</code>.

    What if you wanted to specify a two-line string? One way is to use a 
    triple-quoted string as shown above or you can use an escape sequence 
    for the newline character - `\n` to indicate the start of a new line. 
    An example is: 

        This is the first line\nThis is the second line. 

    Another useful escape sequence to know is the tab - `\t`. There are 
    many more escape sequences but I have mentioned only the most 
    useful ones here.

    One thing to note is that in a string, a single backslash at the end 
    of the line indicates that the string is continued in the next line, 
    but no newline is added. For example:
    				
        "This is the first sentence.\
        This is the second sentence."    				

    ...is equivalent to "This is the first sentence. This is the second 
    sentence."
*   <b>Raw Strings</b>

    If you need to specify some strings where no special processing such 
    as escape sequences are handled, then what you need is to specify a 
    raw string by prefixing `r` or `R` to the string. An example is 
    `r"Newlines are indicated by \n"`.
*   <b>Unicode Strings</b>

    Unicode is a standard way of writing international text. If you want 
    to write text in your native language such as Hindi or Arabic, then 
    you need to have a Unicode-enabled text editor. Similarly, Python 
    allows you to handle Unicode text - all you need to do is prefix `u` 
    or `U`. For example, `u"This is a Unicode string."`.

    Remember to use Unicode strings when you are dealing with text files, 
    especially when you know that the file will contain text written in 
    languages other than English.
*   <b>Strings are immutable</b>

    This means that once you have created a string, you cannot change 
    it. Although this might sound like a bad thing, it really isn't. We 
    will see why this is not a limitation in the various programs that 
    we see later on.
*   <b>String literal concatenation</b>

    If you place two string literals side by side, they are 
    automatically concatenated by Python. For example, `'What\'s' 'your 
    name?'` is automatically converted in to `"What's your name?"`. 

<aside class="alert alert-info">
<p><b>A note for C/C++ programmers</b></p>
<p>There is no separate <code>char</code> data type in 
Python. There is no real need for it and I am sure you won't miss it.</p></aside>

<aside class="alert alert-info">
<p><b>A note for Perl/PHP programmers</b></p>
<p>Remember that single-quoted strings and double-quoted strings are the 
same in Python, they do not differ in any way.</p></aside>

<aside class="alert alert-info">
<p><b>A note for Regular Expression users</b></p>
<p>Always use raw strings when dealing with regular expressions. 
Otherwise, a lot of backwhacking may be required. For example, 
backreferences can be referred to as <code>'\\1'</code> or <code>r'\1'</code>.</p></aside>

Variables
---------

Using just literal constants can soon become boring - we need some way 
of storing any information and manipulate them as well. This is where 
variables come into the picture. Variables are exactly what they mean - 
their value can vary, i.e. you can store anything using a variable. 
Variables are just parts of your computer's memory where you store some 
information. Unlike literal constants, you need some method of accessing 
these variables and hence you give them names.

Identifier Naming
-----------------

Variables are examples of *identifiers*. Identifiers are names given to 
identify something. There are some rules you have to follow for naming 
identifiers:

*   The first character of the identifier must be a letter of the 
    alphabet (upper or lowercase) or an underscore ('`_`').
*   The rest of the identifier name can consist of letters (upper or 
    lowercase), underscores ('`_`') or digits (0-9).
*   Identifier names are case-sensitive. For example, `myname` and 
    `myName` are <b>not the same</b>. Note the lowercase `n` in the 
    former and the uppercase `N` in te latter.
*   Examples of valid identifier names are `i`, `__my_name`, `name_23` 
    and `a1b2_c3`.

    Examples of invalid identifier names are `2things` (because it 
    begins with a number), `this is spaced out` (contains spaces) and 
    `my-name` (contains a `-`).

Data Types
----------

Variables can hold values of different <i>types</i> called <b>data 
types</b>. The basic types are numbers and strings, which we have 
already discussed. In later chapters, you will see how to create your 
own types using [classes](/docs/a-byte-of-python-2/object-oriented/).

Objects
-------

Remember, Python refers to anything used in a program as an 
<i>object</i>. This is meant in the generic sense. Instead of saying 
'the <i>something</i>', we say 'the <i>object</i>'.

<aside class="alert alert-info">
<p><b>A note for Object Oriented Programming users</b></p>
<p>Python is strongly object-oriented in the sense that everything is an 
object including numbers, strings and even functions.</p></aside>

Another note, this time on writing Python programs: you learned 
previously how to write a program on a text file, and then execute it. 
Henceforth, the standard procedure to save and run a Python program is 
as follows:

1.  Open your favorite text editor.
2.  Enter the program code given in the example.
3.  Save it as a file with the filename mentioned in the comment. I 
    follow the convention of having all Python programs saved with the 
    extension .py.
4.  Run the interpreter with the command `python program.py` or use IDLE 
    to run the programs. You can also use the executable method as 
    explained earlier. 

You will now see how to use variables along with literal constants. Save 
the following example and run the program:

#### Example 4.1: Using Variables and Literal constants ####

```python
# Filename : var.py

i = 5
print i
i = i + 1
print i

s = '''This is a multi-line string.
This is the second line.'''
print s
```

Output

```bash
$ python var.py
5
6
This is a multi-line string.
This is the second line.
```

#### How It Works ####

Here's how this program works. First, we assign the literal constant 
value 5 to the variable `i` using the assignment operator (`=`). This 
line is called a statement because it states that something should be 
done and in this case, we connect the variable name `i` to the value 5. 
Next, we print the value of `i` using the `print` statement which, 
unsurprisingly, just prints the value of the variable to the screen.

Then, we add 1 to the value stored in `i` and store it back. We then 
print it and expectedly, we get the value 6.

Similarly, we assign the literal string to the variable `s` and then 
print it.

A note for C/C++ Programmers: Variables are used by just assigning them 
a value. No declaration or data type definition is needed/used. 

Logical and Physical Lines
--------------------------

A physical line is what you see when you write the program. A logical 
line is what Python sees as a single statement. Python implicitly 
assumes that each physical line corresponds to a logical line.

An example of a logical line is a statement like `print 'Hello, World!'` - 
if this was on a line by itself (as you see it in an editor), then this 
also corresponds to a physical line.

Implicitly, Python encourages the use of a single statement per line 
which makes code more readable.

If you want to specify more than one logical line on a single physical 
line, then you have to explicitly specify this using a semicolon (`;`), 
which indicates the end of a logical line/statement. For example:

```python
i = 5
print i
```

...is effectively same as:

```python
i = 5;
print i;
```

...and the same can be written as:

```python
i = 5; print i;
```

...or even:

```python
i = 5; print i
```

However, I strongly recommend that you stick to writing a single logical 
line in a single physical line only. Use more than one physical line for 
a single logical line only if the logical line is really long. The idea 
is that avoiding the semicolon as much as possible leads to more 
readable code. In fact, I have never used or even seen a semicolon in a 
Python program.

An example of writing a logical line spanning many physical lines 
follows. This is referred to as explicit line joining:

```python
s = 'This is a string. \
This continues the string.'
print s
```

This gives the output:

```bash
This is a string. This continues the string.
```

Similarly:

```python
print \
i
```

...is the same as:

```python
print i
```

Sometimes, there is an implicit assumption where you don't need to use a 
backslash. This is the case where the logical line uses parentheses, 
square brackets or curly braces. This is is called implicit line joining. 
The idea behind implicit line joining, is that once a part of a logical 
line is "opened" with a `(` or <code>[</code> or `{`, no backslashes are 
required until the corresponding `)` or `]` or `}` is met.

You can see this in action when we write programs using lists in later 
chapters. 

Indentation
-----------

Whitespace is important in Python. Actually, **whitespace at the 
beginning of the line is important**. This is called *indentation*. 
Leading whitespace (spaces and tabs) at the beginning of the logical 
line is used to determine the indentation level of the logical line, 
which in turn is used to determine the grouping of statements.

This means that statements which go together *must* have the same 
indentation. Each such set of statements is called a block. We will 
see examples of how blocks are important in later chapters.

One thing you should remember is how wrong indentation can give rise to 
errors. For example, the following piece of code has a single space at 
the start of the second line:

```python
i = 5
 print 'Value is', i
print 'I repeat, the value is', i
```

When you run this, you get the following error:

```python
  File "whitespace.py", line 4
    print 'Value is', i
    ^
IndentationError: unexpected indent
```

Notice that there is a single space at the beginning of the second line. The 
error indicated by Python tells us not only that the syntax of the program is 
invalid, i.e. the program was not properly written, it specifically points out 
the there is some issue with the indentation. What this means to you is that 
you cannot arbitrarily start new blocks of statements (except for the main 
block which you have been using all along, of course). Cases where you can use 
new blocks will be detailed in later chapters such as the control flow 
chapter.

### How to indent ###

There are two methods for indentation: either use tabs or spaces. If you 
choose to use spaces, you can use either two or four spaces for every level of 
indentation. Whichever method you prefer does not matter as much as does using 
it consistently across your source code.

Do not use a mixture of tabs and spaces for the indentation as it does not 
work across different platforms properly. Furthermore, Python source code 
analysis tools such as [Pylint](http://www.pylint.org/) will raise warnings 
when they encounter mixed styles of indentation in source code.

If you are interested in what the creators of Python think about indentation, 
you can read the [Style Guide for Python Code](legacy.python.org/dev/peps/pep-0008/).

Summary
-------

Now that we have gone through many nitty-gritty details, we can move on to 
more interesting stuff such as control flow statements. Be sure to become 
comfortable with what you have read in this chapter. In the next one, you will 
learn about [Python Operators and Expressions](/docs/a-byte-of-python-2/operators-and-expressions/).

<ul class='pager'>
    <li class='previous'>
        <a href='/docs/a-byte-of-python-2/first-steps/'>&larr; Previous: First Steps</a>
    </li>
    <li class='next'>
        <a href='/docs/a-byte-of-python-2/operators-and-expressions/'>Next: Operators and Expressions &rarr;</a>
    <li>
</ul>
