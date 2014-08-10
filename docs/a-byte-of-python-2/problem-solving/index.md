<!-- -
Title: A Byte of Python 2: Problem Solving
Author: Swaroop C H
Editor: Marios Zindilis
First Published: 2003
Last Updated: 2014-04-06
- -->

<ol class='breadcrumb' itemprop='breadcrumb'>
	<li><a href="/">Home</a></li>
	<li><a href="/docs/">Docs</a></li>
	<li><a href="/docs/a-byte-of-python-2/">A Byte of Python 2</a></li>
	<li><a href="/docs/a-byte-of-python-2/problem-solving/">Problem Solving</a></li>
</ol>

Problem Solving: Writing a Python Script
========================================

We have explored various parts of the Python language and now we will take a 
look at how all these parts fit together, by designing and writing a program 
which does something useful.

The Problem
-----------

The problem is: 'I want a program which creates a backup of all my important 
files'.

Although this is a simple problem, there is not enough information for us to 
get started with the solution. A little more analysis is required. For example, 
how do we specify which files are to be backed up? Where is the backup stored? 
How are they stored in the backup?

After analyzing the problem properly, we design our program. We make a list of 
things about how our program should work. In this case, I have created the 
following list on how I want it to work. If you do the design, you may not come 
up with the same kind of problem - every person has their own way of doing 
things, this is ok.

1.  The files and directories to be backed up are specified in a list.
2.  The backup must be stored in a main backup directory.
3.  The files are backed up into a zip file.
4.  The name of the zip archive is the current date and time.
5.  We use the standard `zip` command available by default in any standard 
    Linux/Unix distribution. Windows users can use the Info-Zip program. Note 
    that you can use any archiving command you want as long as it has a command 
    line interface so that we can pass arguments to it from our script.

<ul class='pager'>
	<li class='previous'><a href='/docs/a-byte-of-python-2/data-structures/summary.html'>&larr; Previous: Data Structures Summary</a></li>
	<li class='next'><a href='/docs/a-byte-of-python-2/problem-solving/solution.html'>Next: The Solution &rarr;</a></li>
</ul>
