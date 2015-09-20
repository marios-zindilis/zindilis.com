<!-- -
Title: Installing Python
Description: A beginner level guide to installing Python
- -->

<ol class="breadcrumb">
  <li><a href="/">Home</a></li>
  <li><a href="/docs/">Docs</a></li>
  <li><a href="/docs/a-python-2-tutorial-for-beginners/">A Python 2 Tutorial for Beginners</a></li>
  <li><a href="/docs/a-python-2-tutorial-for-beginners/installing-python/">Installing Python</a></li>
</ol>

Installing Python
=================

In this first step of the tutorial, you are going to install Python.

What is Python?
---------------

If you don't understand this, don't worry. Just skip it and move on.

Python is an [interpreted programming language][1]. For those who don't know, a 
programming language is what you write down to tell a computer what to do. 
However, the computer doesn't read the language directly -- there are hundreds 
of programming languages, and it couldn't understand them all. So, when someone 
writes a program, they will write it in their language of choice, and then 
[compile][2] it -- that is, turn it into lots of 0s and 1s, that the computer 
can easily and quickly understand. A Windows program that you buy is already 
compiled for Windows -- if you opened the program file up, you'd just get a 
mass of weird characters and rectangles. Give it a go -- find a small Windows 
program, and open it up in Notepad or Wordpad. See what garbled mess you get.

But that Windows program is compiled for Windows -- no other machine can run 
that program, unless it has Windows. What Python is, is a language which is 
never actually compiled in full -- instead, an interpreter turns each line of 
code into 0s and 1s that your computer can understand. And it is done on the 
fly -- it compiles the bits of the program you are using as you are using them. 
If you were to quit the program and come back another day, it would compile the 
bits you are using, as you are using them, again. Seems a waste of time? Maybe, 
but the fact is that when you come back another day, you might be using a 
Windows PC instead of a Mac. You might send the program to a friend, who uses 
another type of computer. Or you might post your program on the internet, where 
everyone using all different types of systems might download it. That is the 
wonder of an interpreted programming language -- it is like a language that 
*everyone* can understand.

How to install Python
---------------------

For Python programming you need a working Python installation and a text 
editor. Python comes with its own editor *IDLE*, which is quite nice and 
totally sufficient for the beginning. As you get more into programming, you 
will probably switch to some other editor like *emacs*, *vi* or another.

The Python download page is [python.org/downloads][3] The most recent version 
is 3.4.1, but any *Python 2.x* version since 2.2 will work for this tutorial. 
Be careful with *Python 3*, though, as some significant details have changed, 
and hence this tutorial's examples will not work with it. A version of this 
tutorial for Python 3 is at [Non-Programmer's Tutorial for Python 3][4]. There 
are various different installation files for different computer platforms 
available on the download site. Here are some specific instructions for the 
most common operating systems:

### Linux, BSD and Unix users ###

You are probably lucky and Python is already installed on your machine. To test 
it type `python` on a command line. If you see something like that in the 
following section, you are set.

If you have to install Python, just use the operating system's package manager 
or go to the repository where your packages are available and get Python. 
Alternatively, you can compile Python from scratch after downloading the source 
code. If you get the source code make sure you compile in the Tk extension if 
you want to use IDLE.

### Mac users ###

Starting from Mac OS X (Tiger), Python ships by default with the operating 
system, but you  might want to update to the newer version (check the version 
by starting `python` in a command line terminal). Also IDLE (the Python editor) 
might be missing in the standard installation. If you want to (re-)install 
Python, you can get it from the [Mac download page][5] on the Python site.

### Windows users ###

Some computer manufacturers pre-install Python. To check if you already have it 
installed, open command prompt (Windows Key+R and type `cmd`) or MS-DOS and 
type `python`. If it says "Bad command or file name" you will need to download 
the appropriate Windows installer from [the Windows download page][6]. If you 
do not have a 64-bit AMD or Intel chip processor, you will need the 
**Windows x86 MSI Installer**; otherwise the **Windows x86-64 MSI Installer** 
is the correct one (they are very similarly named, so check carefully which one 
you are downloading). Start the installer by double-clicking it and follow the 
prompts.

After installing you will need to add the installation path to the `PATH` 
system variable if you wish to use it from the command prompt instead of the 
IDLE editor.

<ul class='pager'>
  <li class='previous'>
    <a href='/docs/a-python-2-tutorial-for-beginners/'>
      &larr; Previous: Table of Contents</a>
  </li>
  <li class='next'>
    <a href='/docs/a-python-2-tutorial-for-beginners/very-simple-programs/'>
      Next: Very Simple Programs &rarr;
    </a>
  </li>
</ul>

<!-- Links -->
[1]: https://en.wikipedia.org/wiki/interpreted_programming_language "Interpreted Programming Language"
[2]: https://en.wikipedia.org/wiki/compiler "Compiler"
[3]: https://www.python.org/downloads/ "Python Downloads"
[4]: https://en.wikibooks.org/wiki/Non-Programmer%27s_Tutorial_for_Python_3
[5]: https://www.python.org/downloads/mac-osx/ "Python Downloads for Mac"
[6]: https://www.python.org/download/releases/2.7.8/ "Python Downloads for Windows"
