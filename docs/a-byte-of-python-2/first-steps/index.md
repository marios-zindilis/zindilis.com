<!-- -
Title: A Byte of Python 2: First Steps
Description: A Byte of Python 2: First Steps
Author: Swaroop C H
Editor: Marios Zindilis
First Published: 2003
Last Updated: 2014-01-05
- -->

<ol class="breadcrumb">
<li><a href="/">Home</a></li>
<li><a href="/docs/">Docs</a></li>
<li><a href="/docs/a-byte-of-python-2/">A Byte of Python 2</a></li>
<li><a href="/docs/a-byte-of-python-2/first-steps.html">First Steps</a></li>
</ol>

First Steps
===========

Introduction
------------

In this chapter, you will see how to run a traditional 'Hello World' 
program in Python. This will teach you how to write, save and run 
Python programs.

There are two ways of using Python to run your program: using the 
interactive interpreter prompt or using a source file. We will now 
see how to use both those methods.

Using the interpreter prompt
----------------------------

Start the intepreter on the command line by entering `python` at the 
shell prompt. Now enter `print 'Hello, World!'` followed by the Enter 
key. You should see the words `Hello, World!` as output.

For Windows users, you can run the interpreter in the command line if 
you have set the `PATH` variable appropriately. Alternatively, you can 
use the IDLE program. IDLE is short for Integrated DeveLopment 
Environment. Click on Start -> Programs -> Python 2.7 -> IDLE (Python 
GUI). Linux users can use IDLE too.

Note that the `<<<` signs are the prompt for entering Python statements.

#### Example 3.1: Using the python interpreter prompt ####
			
    marios@yovan ~ $ python
    Python 2.7.3 (default, Sep 26 2013, 16:35:25) 
    [GCC 4.7.2] on linux2
    Type "help", "copyright", "credits" or "license" for more information.
    >>> print 'Hello, World!'
    Hello, World!
    >>> 

Notice that Python gives you the output of the line immediately! What 
you just entered is a single Python *statement*. You used `print` to 
(unsurprisingly) print any value that you supply to it. Here, you are 
supplying the text `Hello, World!` and this is promptly printed to the 
screen.

### How to quit the Python prompt ###

To exit the prompt, press `Ctrl-d` if you are using IDLE or a Linux/BSD 
shell. In case of the Windows command prompt, press `Ctrl-z` followed 
by Enter. 

Choosing an Editor
------------------

Before we move on to writing Python programs in source files, we need 
an editor to write the source files. The choice of an editor is 
crucial indeed. You have to choose an editor as you would choose a car 
you would buy. A good editor will help you write Python programs easily, 
making your journey more comfortable and helps you reach your 
destination (achieve your goal) in a much faster and safer way.

One of the very basic requirements is **syntax highlighting** where all 
the different parts of your Python program are colorized so that you can 
see your program and visualize its running.

If you are using Windows, then I suggest that you use IDLE. IDLE does 
syntax highlighting and a lot more such as allowing you to run your 
programs within IDLE among other things. A special note: don't use 
Notepad - it is a bad choice because it does not do syntax highlighting 
and also importantly it does not support indentation of the text which 
is very important in our case as we will see later. Good editors such 
as IDLE (and also VIM) will automatically help you do this.

If you are using Linux/FreeBSD, then you have a lot of choices for an 
editor. If you are an experienced programmer, then you must be already 
using VIM or Emacs. Needless to say, these are two of the most powerful 
editors and you will be benefitted by using them to write your Python 
programs. I personally use VIM for most of my programs. If you are a 
beginner programmer, then you can use Kate which is one of my favorites. 
In case you are willing to take the time to learn VIM or Emacs, then I 
highly recommend that you do learn to use either of them as it will be 
very useful for you in the long run.

If you still want to explore other choices of an editor, see [this 
comprehensive list of Python editors](https://wiki.python.org/moin/PythonEditors) 
and make your choice. You can also choose an <abbr title='Integrated Development Environment'>IDE</abbr> 
(<b>I</b>ntegrated <b>D</b>evelopment <b>E</b>nvironment) for Python. See [this 
comprehensive list of IDEs](https://wiki.python.org/moin/IntegratedDevelopmentEnvironments) 
that support Python for more details. Once you start writing large 
Python programs, IDEs can be very useful indeed.

I repeat once again, please choose a proper editor - it can make writing 
Python programs more fun and easy.

Using a Source File
-------------------

Now let's get back to programming. There is a tradition that whenever 
you learn a new programming language, the first program that you write 
and run is the 'Hello World' program - all it does is just say 'Hello 
World' when you run it. As Simon Cozens puts it:

> It is the 'traditional incantation to the programming gods to help you learn the language better'

Start your choice of editor, enter the following program and save it as 
`helloworld.py`:

#### Example 3.2: Using a Source File

```python	
#!/usr/bin/python
# Filename : helloworld.py
print 'Hello, World!'
```

Run this program by opening a shell (a Linux terminal or DOS prompt) 
and entering the command `python helloworld.py`. If you are using 
IDLE, use the menu Edit -> Run Script or the keyboard shortcut Ctrl-F5. 
The output is as shown below:

```bash
$ python helloworld.py
Hello, World!
```

If you got the output as shown above, congratulations! You have 
successfully run your first Python program.

In case you got an error, please type the above program exactly as 
shown above and run it again. Note that Python is case-sensitive, i.e. 
`print` is not the same as `Print` - note the lowercase `p` in the 
former and the uppercase `P` in the latter. Also, ensure there are no 
spaces or tabs before the first character in each line - we will see 
why this is important later.

#### How It Works ####

Let us consider the first two lines of the program. These are called 
comments - anything to the right of the `#` symbol is a comment and is 
mainly useful as notes for the reader of the program.

Python does not use comments except for the special case of the first 
line here. It is called the *shebang line* - whenever the first two 
characters of the source file are `#!` followed by the location of a 
program, this tells your Linux/Unix system that this program should be 
run with this interpreter when you execute the program. This is 
explained in detail in the next section. Note that you can always run 
the program on any platform by specifying the interpreter directly on 
the command line such as the command `python helloworld.py`.

Important: Use comments sensibly in your program to explain some 
important details of your program - this is useful for readers of your 
program so that they can easily understand what the program is doing. 
Remember, that person can be yourself after six months!

The comments are followed by a Python statement - this just prints the 
text 'Hello, World!'. The `print` is actually an **operator** and 'Hello, 
World!' is referred to as a **string** - don't worry, we will explore 
these terminologies in detail later. 

Executable Python Programs
--------------------------

This paragraph applies only to Linux/Unix users, but Windows users might 
be curious as well about the first line of the program. To be able to 
run a text file with Python code as a program, or in other words to 
execute it, first you have to give the file the executable permission, 
using the `chmod` command:

```bash
$ chmod a+x helloworld.py
$ ./helloworld.py
Hello, World!
```

The `chmod` command is used here to change the *mode* of the file by 
giving the e<b>x</b>ecute permission to <i>all</i> users of the system. 
After that, you can execute the program directly by specifying the 
location (i.e. the path) of the source file. You will use the `./` (or 
the <i>slashdot</i>) to indicate that the program is located in the 
current directory.

To make things more fun, you can rename the file to just `helloworld` 
and run it as `./helloworld` and it will still work, because the system 
knows that it has to run the program using the interpreter whose 
location is specified in the first line in the source file (the 
<i>shebang</i>).

You are now able to run the program as long as you know the exact path 
of the program - but what if you wanted to be able to run the program 
from anywhere? You can do this by storing the program in one of the 
directories listed in the `PATH` environment variable. Whenever you run 
any program, the system looks for that program in each of the 
directories listed in the `PATH` environment variable and then runs that 
program. You can make this program available everywhere by simply 
copying this source file to one of the directories listed in `PATH`.

```bash
$ echo $PATH
/opt/mono/bin:/usr/local/bin:/usr/bin:/bin:/usr/X11R6/bin:/home/swaroop/bin
$ cp helloworld.py /home/swaroop/bin/helloworld
$ helloworld
Hello World
```
As shown above, you can display the `PATH` variable using the `echo` 
command and prefixing the variable name with a `$` to indicate to the 
shell that you need the value of this variable. You will see that your 
<i>home</i> directory (in the above example: `/home/swaroop/bin`) is 
one of the directories in the `PATH` variable where `swaroop` is the 
username I am using in my system. There will usually be a similar 
directory for your username on your system, in which you can put your 
Python programs, to make them universally executable. Note that moving 
files in your personal `bin` directory (the one under your `/home/`) 
will only make them executable for you. Alternatively, you can add any 
directory of your choice to the `PATH` variable - this can be done by 
running `PATH=$PATH:/home/swaroop/mydir` where `/home/swaroop/mydir` is 
the directory I want to add to the `PATH` variable.

If you want your Python programs to be executable for any user on the 
system -not just for you- you can move or copy them into one of the 
directories in `$PATH`, which is <b>not</b> under your `/home/`.

This method is very useful if you want to write useful scripts that you 
want to run the anytime, from anywhere on the system. It is like 
creating your own commands just like `cd` or any other commands that you 
use in the Linux terminal or the DOS prompt.

Caution: With regards to Python, a <i>program</i> or a <i>script</i> or 
<i>software</i> all mean the same thing.

Getting Help
------------

If you need some quick information about any function or statement in 
Python, you can use the built-in **help** functionality. This is very 
useful especially when using the interpreter prompt. For example, 
running `help(str)` displays the help for the `str` class which is used 
to store all text (strings) that you use in your program. Classes will 
be explained in detail in the chapter on object-oriented programming.

Note: Press `q` to exit the help.

Similarly, you can obtain information about almost anything in Python. 
Use `help()` to learn more about using help itself!

The `help()` function will work for other functions (e.g. `help('dir')`) 
or with operators (e.g. `help('+')`), or with classes (e.g. `dir('int')`), 
but it won't work with `print`. 
In older versions of Python, you could work around this specific issue 
with defining the `$PYTHONDOCS` environment variable. The following 
example comes from a Fedora 3 system, running Python 2.3.4:

```bash
$ env PYTHONDOCS=/usr/share/doc/python-docs-2.3.4/html/ 
python
Python 2.3.4 (#1, Oct 26 2004, 16:42:40)
[GCC 3.4.2 20041017 (Red Hat 3.4.2-6.fc3)] on linux2
Type "help", "copyright", "credits" or "license" for more information.
>>> help('print')
```

In newer systems, without defining `$PYTHONDOCS`, you can view the 
documentation for `print` with `help('__builtin__.print')`.

You will notice that I used quotes to specify `'print'` so that Python 
can understand that I want to fetch help about `'print'` and I am not 
asking it to actually print anything.

Summary
-------

In this chapter you wrote your first Python program, the venerable 
"Hello, World!", saved it in a file, made it executable and run it. 
These might not seem much, but they are actually the first step on the 
path to world domination :)

Now that you are a Python user, [let's learn some more Python concepts](/docs/a-byte-of-python-2/the-basics.html).

<ul class='pager'>
    <li class='previous'>
        <a href='/docs/a-byte-of-python-2/installing-python/'>&larr; Previous: Installing Python</a>
    </li>
    <li class='next'>
        <a href='/docs/a-byte-of-python-2/the-basics/'>Next: The Basics &rarr;</a>
    <li>
</ul>
