<!-- -
Title: A Byte of Python 2: Operators and Expressions
- -->

<ol class="breadcrumb">
<li><a href="/">Home</a></li>
<li><a href="/docs/">Docs</a></li>
<li><a href="/docs/a-byte-of-python-2/">A Byte of Python 2</a></li>
<li><a href="/docs/a-byte-of-python-2/operators-and-expressions.html">Operators and Expressions</a></li>
</ol>

Operators and Expressions
=========================

Introduction
------------

Most statements (logical lines) that you write will contain expressions. 
A simple example of an expression is `2 + 3`. An expression can be 
broken down into **operators** and **operands**.

Operators are functionality that do something and can be represented by 
symbols such as `+` or by special keywords. Operators require some data 
to operate on and such data are called operands. In this case, `2` and 
`3` are the operands. 

Operators
---------

Let's take a brief look at the operators and their usage.

Tip: You can evaluate the expressions given in the examples using the 
interpreter interactively. For example, to test the expression `2 + 3`, 
use the interactive Python interpreter prompt:

```python
>>> 2 + 3
5
>>> 3 * 5
15
>>>
```			

Here is a table of Python operators and their usage, with examples:

<table summary="Operators and their usage" border="1" class="table table-striped table-condensed">
	<thead>
		<tr><th>Operator</th><th>Name</th><th>Explanation</th><th>Examples</th></tr>
	</thead>
	<tbody>
		<tr>
			<td align="center"><code>+</code></td>
			<td>Plus</td>
			<td>Adds the two objects</td>
			<td><code>3 + 5</code> gives <code>8</code>, and <code>'a' + 'b'</code> gives <code>'ab'</code>.</td>
		</tr>
		<tr>
			<td align="center"><code>-</code></td>
			<td>Minus</td>
			<td>Either makes a number negative, or gives the subtraction of one number from the other</td>
			<td><code>-5.2</code> gives a negative number. <code>50 - 24</code> gives <code>26</code>.</td>
		</tr>
		<tr>
			<td align="center"><code>*</code></td>
			<td>Multiply</td>
			<td>Gives the multiplication of the two numbers or returns a string repeated that many times.</td>
			<td><code>2 * 3</code> gives <code>6</code>. <code>'la' * 3</code> gives <code>'lalala'</code>.
			</td>
		</tr>
		
		<tr>
			<td align="center"><code>**</code></td>
			<td>Power</td>
			<td>
						
						Returns x to the power of y
						
						</td>
			<td>
						
						<code>3 ** 4</code> gives <code>81</code>
						(i.e. <code>3 * 3 * 3 * 3</code>)
						
						</td></tr>
		<tr>
			<td align="center"><code>/</code></td>
			<td>Divide</td>
			<td>
						
						Divide x by y
						
						</td>
			<td>
						
						<code>4/3</code> gives <code>1</code> (division
						of integers gives an integer).
						<code>4.0/3</code> or <code>4/3.0</code> gives
						<code>1.3333333333333333</code>
						
						</td></tr>
		<tr>
			<td align="center"><code>//</code></td>
			<td>Floor Division</td>
			<td>
						
						Returns the floor of the quotient
						
						</td>
			<td>
						
						<code>4 // 3.0</code> gives <code>1.0</code>
						
						</td></tr>
		<tr>
			<td align="center"><code>%</code></td>
			<td>Modulo</td>
			<td>
						
						Returns the remainder of the division
						
						</td>
			<td>
						
						<code>8%3</code> gives <code>2</code>.
						<code>-25.5%2.25</code> gives <code>1.5</code> .
						
						</td></tr>
		<tr>
			<td align="center"><code>&lt;&lt;</code></td>
			<td>Left Shift</td>
			<td>
						
						Shifts the bits of the number to the left by the number of
						bits specified. (Each number is represented in memory by
						bits or binary digits i.e. 0 and 1)
						
						</td>
			<td>
						
						<code>2 &lt;&lt; 2</code> gives
						<code>8</code>.
						- <code>2</code> is represented by
						<code>10</code> in bits. Left shifting by 2 bits
						gives <code>1000</code> which represents the
						decimal <code>8</code>.
						
						</td></tr>
		<tr>
			<td align="center"><code>&gt;&gt;</code></td>
			<td>Right Shift</td>
			<td>
						
						Shifts the bits of the number to the right by the number
						of bits specified.
						
						</td>
			<td>
						
						<code>11 &gt;&gt; 1</code> gives
						<code>5</code> -
						<code>11</code> is represented in bits by
						<code>1011</code> which when right shifted by
						1 bit gives <code>101</code> which is nothing
						but decimal <code>5</code>.
						
						</td></tr>
		<tr>
			<td align="center"><code>&amp;</code></td>
			<td>Bitwise AND</td>
			<td>
						
						Bitwise AND of the numbers
						
						</td>
			<td>
						
						<code>5 &amp; 3</code> gives
						<code>1</code>.
						
						</td></tr>
		<tr>
			<td align="center"><code>|</code></td>
			<td>Bit-wise OR</td>
			<td>
						
						Bitwise OR of the numbers
						
						</td>
			<td>
						
						<code>5 | 3</code> gives <code>7</code>
						
						</td></tr>
		<tr>
			<td align="center"><code>^</code></td>
			<td>Bit-wise XOR</td>
			<td>
						
						<code>5 ^ 3</code> gives <code>6</code>
						
						</td><td class="auto-generated">Â </td></tr>
		<tr>
			<td align="center"><code>~</code></td>
			<td>Bit-wise invert</td>
			<td>
						
						The bit-wise inversion of x is -(x+1)
						
						</td>
			<td>
						
						<code>~5</code> gives <code>-6</code>.
						
						</td></tr>
		<tr>
			<td align="center"><code>&lt;</code></td>
			<td>Less Than</td>
			<td>
						
						Returns whether x is less than y. All comparison operators
						return 1 for true and 0 for false. This is equivalent to
						the special variables <code>True</code> and
						<code>False</code> respectively. Note the
						capitalization of these variables' names.
						
						</td>
			<td>
						
						<code>5 &lt; 3</code> gives
						<code>0</code> (i.e. <code>False</code>) and
						<code>3 &lt; 5</code> gives
						<code>1</code> (i.e. <code>True</code>).
						
						Comparisons can be chained arbitrarily:
						3 &lt; 5 &lt; 7 gives <code>True</code>.
						
						</td></tr>
		<tr>
			<td align="center"><code>&gt;</code></td>
			<td>Greater Than</td>
			<td>
						
						Returns whether x is greater than y
						
						</td>
			<td>
						
						<code>5 &lt; 3</code> returns
						<code>True</code>. If both operands are numbers, they
						are first converted to a common type. Otherwise, it always
						returns <code>False</code>.
						
						</td></tr>
		<tr>
			<td align="center"><code>&lt;=</code></td>
			<td>Less Than or Equal To</td>
			<td>
						
						Returns whether x is less than or equal to y
						
						</td>
			<td>
						
						<code>x = 3; y = 6; x &lt;= y</code>
						returns <code>True</code>.
						
						</td></tr>
		<tr>
			<td align="center"><code>&gt;=</code></td>
			<td>Greater Than or Equal To</td>
			<td>
						
						Returns whether x is greater than or equal to y
						
						</td>
			<td>
						
						x = 4; y = 3; x &gt;= 3 returns
						<code>True</code>.
						
						</td></tr>
		<tr>
			<td align="center"><code>==</code></td>
			<td>Equal To</td>
			<td>
						
						Compares if the objects are equal
						
						</td>
			<td>
						
						<code>x = 2; y = 2; x == y</code> returns
						<code>True</code>.
						
						<code>x = 'str'; y = 'stR'; x == y</code> returns
						<code>False</code>.
						
						<code>x = 'str'; y = 'str'; x == y</code> returns
						<code>True</code>.
						
						</td></tr>
		<tr>
			<td align="center"><code>!=</code></td>
			<td>Not Equal To</td>
			<td>
						
						Compares if the objects are not equal
						
						</td>
			<td>
						
						<code>x = 2; y = 3; x != y</code> returns
						<code>True</code>.
						
						</td></tr>
		<tr>
			<td align="center"><code>not</code></td>
			<td>Boolean NOT</td>
			<td>
						
						If x is <code>True</code>, it returns
						<code>False</code>. If x is <code>False</code>,
						it returns <code>True</code>.
						
						</td>
			<td>
						
						<code>x = True; not y</code> returns
						<code>False</code>.
						
						</td></tr>
		<tr>
			<td align="center"><code>and</code></td>
			<td>Boolean AND</td>
			<td>
						
						<code>x and y</code> returns <code>False</code>
						if x is <code>False</code>, else it returns evaluation
						of y
						
						</td>
			<td>
						
						<code>x = False; y = True; x and y</code> returns
						<code>False</code> since x is False. In this case,
						Python will not evaluate y since it knows that the value of
						the expression will has to be false (since x is False).
						This is called short-circuit evaluation.
						
						</td></tr>
		<tr>
			<td align="center"><code>or</code></td>
			<td>Boolean OR</td>
			<td>
						
						If x is <code>True</code>, it returns True, else it
						returns evaluation of y
						
						</td>
			<td><code>x = True; y = False; x or y</code> returns <code>True</code>. Short-circuit evaluation applies here as well.</td>
		</tr>
	</tbody>
</table>

Operator Precedence
-------------------

If you had an expression such as `2 + 3 * 4`, is the addition done 
first or the multiplication? Our high school maths tell us that the 
multiplication should be done first - this means that the multiplication 
operator has *higher precedence* than the addition operator.

The following table gives the operator precedence table for Python, from 
the lowest precedence (least binding) to the highest precedence (most 
binding). This means that in a given expression, Python will first 
evaluate the operators lower in the table before the operators listed 
higher in the table.

The following table (same as the one in the Python reference manual) is 
provided for the sake of completeness. However, I advise you to use 
parentheses for grouping of operators and operands in order to 
explicitly specify the precedence and to make the program as readable 
as possible. For example, `2 + (3 * 4)` is definitely clearer than 
`2 + 3 * 4`. As with everything else, the parentheses should be used 
sensibly and should not be redundant (as in `2 + (3 + 4)`).

<table summary="Operator Precedence" border="1" class="table table-striped table-condensed">
	<thead>
		<tr><th>Operator</th><th>Description</th></tr>
	</thead>
	<tbody>
		<tr><td>lambda</td><td>Lambda Expression</td></tr>
		<tr><td>or</td><td>Boolean OR</td></tr>
		<tr><td>and</td><td>Boolean AND</td></tr>
		<tr><td>not x</td><td>Boolean NOT</td></tr>
		<tr><td>in, not in</td><td>Membership tests</td></tr>
		<tr><td>is, is not</td><td>Identity tests</td></tr>
		<tr><td>&lt;, &lt;=, &gt;, &gt;=, !=, ==</td><td>Comparisons</td></tr>
		<tr><td>|</td><td>Bitwise OR</td></tr>
		<tr><td>^</td><td>Bitwise XOR</td></tr>
		<tr><td>&amp;</td><td>Bitwise AND</td></tr>
		<tr><td>&lt;&lt;, &gt;&gt;</td><td>Shifts</td></tr>
		<tr><td>+, -</td><td>Addition and subtraction</td></tr>
		<tr><td>*, /, %</td><td>Multiplication, Division and Remainder</td></tr>
		<tr><td>+x, -x</td><td>Positive, Negative</td></tr>
		<tr><td>~x</td><td>Bitwise NOT</td></tr>
		<tr><td>**</td><td>Exponentiation</td></tr>
		<tr><td>x.attribute</td><td>Attribute reference</td></tr>
		<tr><td>x[index]</td><td>Subscription</td></tr>
		<tr><td>x[index:index]</td><td>Slicing</td></tr>
		<tr><td>f(arguments ...)</td><td>Function call</td></tr>
		<tr><td>(expressions, ...)</td><td>Binding or tuple display</td></tr>
		<tr><td>[expressions, ...]</td><td>List display</td></tr>
		<tr><td>{key:datum, ...}</td><td>Dictionary display</td></tr>
		<tr><td>`expressions, ...`</td><td>String conversion</td></tr>
	</tbody>
</table>

The operators which we have not already come across will be explained 
in later chapters.

Operators with the same same precedence are listed in the same row in 
the above table. For example, `+` and `-` have the same precedence.

#### Order of Evaluation ####

By default, the operator precedence table defines which operators are 
evaluated before others. However, if you want to change the order in 
which they are evaluated, you can use parentheses. For example, if you 
want addition to be evaluated before multiplication in an expression, 
then you can write something like `(2 + 3) * 4`.

#### Associativity #####

Operators are usually associated from left to right i.e. operators with 
equal precedence are evaluated in a left to right manner. For example, 
`2 + 3 + 4` is evaluated as `(2 + 3) + 4`. Some operators like 
assignment operators have right to left associativity, e.g. `a = b = c` 
is treated as `a = (b = c)`.

Using Expressions
-----------------

Here is an example of using expressions:

```python
#!/usr/bin/python
# Filename: expression.py

length = 5
breadth = 2

area = length * breadth
print 'Area is', area
print 'Perimeter is', 2 * (length + breadth)
```

#### Output ####

```bash
$ python expression.py
Area is 10
Perimeter is 14
```

#### How It Works ####

The length and breadth of the rectangle are stored in variables by the 
same name. We use these to calculate the area and perimeter of the 
rectangle with the help of expressions. We store the result of the 
expression `length * breadth` in the variable `area` and then print it 
using the `print` statement. In the second case, we directly use the 
value of the expression `2 * (length + breadth)` in the `print` 
statement.

Also, notice how Python 'pretty-prints' the output. Even though we have 
not specified a space between 'Area is' and the variable `area`, Python 
puts it for us so that we get a clean nice output and the program is 
much more readable this way (since we don't need to worry about spacing 
in the output). This is an example of how Python makes life easy for the 
programmer. 

Summary
-------

In this chapter, you have seen how to use operators, operands and 
expressions - these are the basic building blocks of any program. Next, 
you will see how to make use of these in your programs, using statements.

<ul class='pager'>
    <li class='previous'>
        <a href='/docs/a-byte-of-python-2/the-basics/'>&larr; Previous: The Basics</a>
    </li>
    <li class='next'>
        <a href='/docs/a-byte-of-python-2/control-flow/'>Next: Control Flow &rarr;</a>
    <li>
</ul>
