<!-- -
Title: A Byte of Python 2
Author: Swaroop C H
Editor: Marios Zindilis
First Published: 2003
Last Updated: 2014-01-23
- -->

<ol class="breadcrumb">
<li><a href="/">Home</a></li>
<li><a href="/docs/">Docs</a></li>
<li><a href="/docs/a-byte-of-python-2/">A Byte of Python 2</a></li>
</ol>


A Byte of Python 2
==================

This book on Python 2 was first written by [Swaroop C H](http://swaroopch.com/) 
in 2003, and was initially just titled *A Byte of Python*. However, since the 
author then wrote another book with the same title, for Python 3, it's worth 
separating the two by appending Python's version number in the end.

The book is copyrighted by its original author, 
[Swaroop C H](http://swaroopch.com/) and is released under the 
[Creative Commons Attribution-NonCommercial-ShareAlike License 2.0](http://creativecommons.org/licenses/by-nc-sa/2.0/). 

Abstract
--------

This book will help you learn the Python programming language, whether 
you are new to computers or an experienced programmer.

To read the version of this book written for the very latest Python 3, 
please see
[www.swaroopch.com/notes/Python](http://www.swaroopch.com/notes/Python/). 
Otherwise, for the version on Python 2, keep reading here.

Table of Contents
-----------------

#### [0. Preface](/docs/a-byte-of-python-2/preface/) ####
1.  [Who This Book Is For](/docs/a-byte-of-python-2/preface/)
2.  [A History Lesson](/docs/a-byte-of-python-2/preface/a-history-lesson.html)
3.  [Status of the Book](/docs/a-byte-of-python-2/preface/status-of-the-book.html)
4.  Official Website
5.  License Terms
6.  Feedback
7.  Something to Think About

#### [1. Introduction](/docs/a-byte-of-python-2/introduction.html) ####
1.  Introduction
2.  Features of Python
3.  Summary
4.  Why not Perl?
5.  What Programmers Say

#### [2. Installing Python](/docs/a-byte-of-python-2/installing-python.html) ####
1.  For Linux/BSD Users
2.  For Windows Users
3.  Choosing an Editor
4.  Using a Source File
    * Output
    * How it Works
5.  Executable Python Programs
6.  Getting Help
7.  Summary

#### [3. First Steps](/docs/a-byte-of-python-2/first-steps.html) ####
1.  Introduction
2.  Using the interpreter prompt
3.  Choosing an Editor
4.  Using a Source File
    * Output
    * How It Works
5.  Executable Python programs
6.  Getting Help
7.  Summary

#### [4. The Basics](/docs/a-byte-of-python-2/the-basics.html) ####
1.  Literal Constants
2.  Numbers
3.  Strings
4.  Variables
5.  Identifier Naming
6.  Data Types
7.  Objects
    * Output
    * How It Works
8.  Logical and Physical Lines
9.  Indentation
10. Summary

#### [5. Operators and Expressions](/docs/a-byte-of-python-2/operators-and-expressions.html) ####
1.  Introduction
2.  Operators
3.  Operator Precedence
    * Order of Evaluation
    * Associativity
4.  Expressions
    * Using Expressions
5.  Summary

#### [6. Control Flow](/docs/a-byte-of-python-2/control-flow.html) ####
1.  Introduction
2.  The `if` statement
    * Using the `if` statement
    * How It Works
3.  The while statement
    * Using the while statement
4.  The `for` loop
    * Using the `for` statement
5.  The `break` statement
    * Using the `break` statement
6.  The `continue` statement
    * Using the `continue` statement
7.  Summary

#### [7. Functions](/docs/a-byte-of-python-2/functions.html) ####
1.  Introduction
    * Defining a Function
2.  Function Parameters
    * Using Function Parameters
3.  Local Variables
    * Using Local Variables
    * Using the global statement
4.  Default Argument Values
    * Using Default Argument Values
5.  Keyword Arguments
    * Using Keyword Arguments
6.  The `return` statement
    * Using the literal statement
7.  DocStrings
    * Using DocStrings
8.  Summary

#### [8. Modules](/docs/a-byte-of-python-2/modules/) ####
1.  [Introduction](/docs/a-byte-of-python-2/modules/)
2.  [Byte-compiled .pyc files](/docs/a-byte-of-python-2/modules/byte-compiled-pyc-files.html)
3.  [The `from..import` statement](/docs/a-byte-of-python-2/modules/the-from-import-statement.html)
4.  [A module's `__name__`](/docs/a-byte-of-python-2/modules/a-modules-name.html)
5.  [Making your own Modules](/docs/a-byte-of-python-2/modules/making-your-own-modules.html)
6.  [The `dir()` function](/docs/a-byte-of-python-2/modules/the-dir-function.html)
7.  [Summary](/docs/a-byte-of-python-2/modules/summary.html)

#### [9. Data Structures](/docs/a-byte-of-python-2/data-structures/) ####
1.  [Introduction](/docs/a-byte-of-python-2/data-structures/)
2.  [Lists](/docs/a-byte-of-python-2/data-structures/lists.html)
3.  [Tuples](/docs/a-byte-of-python-2/data-structures/tuples.html)
4.  [Dictionaries](/docs/a-byte-of-python-2/data-structures/dictionaries.html)
5.  [Sequences](/docs/a-byte-of-python-2/data-structures/sequences.html)
6.  [References](/docs/a-byte-of-python-2/data-structures/references.html)
7.  [More about Strings](/docs/a-byte-of-python-2/data-structures/more-about-strings.html)
8.  [Summary](/docs/a-byte-of-python-2/data-structures/summary.html)

#### [10. Problem Solving - Writing a Python Script](/docs/a-byte-of-python-2/problem-solving/) ####
1.  [The Problem](/docs/a-byte-of-python-2/problem-solving/)
2.  [The Solution](/docs/a-byte-of-python-2/problem-solving/solution.html)
    * First Version
    * Second Version
    * Third Version
    * Fourth Version
    * More Refinements
3.  The Software Development Process
4.  Summary

#### 11. Object-Oriented Programming ####
1.  Introduction
2.  The self
3.  Classes
    * Creating a Class
4.  object Methods
    * Using Object Methds
5.  The `__init__` method
    * Using the `__init__` method
6.  Class and Object Variables
    * Using Class and Object Variables
7.  Inheritance
    * Using Inheritance
8.  Summary

#### 12. Input/Output ####
1.  Files
    * Using `file`
2.  Pickle
    * Pickling and Unpickling
3.  Summary

#### 13. Exceptions ####
1.  Errors
2.  Try..Except
    * Handling Exceptions
3.  Raising Exceptions
    * How To Raise Exceptions
4.  Try..Finally
    * Using Finally
5.  Summary

#### 14. The Python Standard Library ####
1.  Introduction
2.  The sys module
    * Command Line Arguments
    * More sys
3.  The os module
4.  Summary

#### 15. More Python ####
1.  Special Methods
2.  Single Statement Blocks
3.  List Comprehension
    * Using List Comprehensions
4.  Receiving Tuples and Lists in Functions
5.  Lambda Forms
    * Using Lambda Forms
6.  The `exec` and `eval` statements
7.  The `assert` statement
8.  The `repr` function
9.  Summary

#### 16. What Next? ####
1.  Graphical Software
    * Summary of GUI Tools
2.  Explore More
3.  Summary

#### A. Free/Libre and Open Source Software (FLOSS) ####
#### B. About ####
1.  Colophon
2.  About the Author

#### C. Revision History ####
1.  Timestamp
