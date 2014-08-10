<!-- -
Title: Installing Python
Author: Swaroop C H
- -->

<ol class="breadcrumb">
<li><a href="/">Home</a></li>
<li><a href="/docs/">Docs</a></li>
<li><a href="/docs/a-byte-of-python-2/">A Byte of Python 2</a></li>
<li><a href="/docs/a-byte-of-python-2/installing-python.html">Installing Python</a></li>
</ol>

Installing Python
=================

This chapter contains some brief instructions on how to get Python 
running on your system, whether is runs Linux, BSD or Windows.

For Linux and BSD Users
-----------------------

If you are using a Linux distribution such as Ubuntu, Fedora, Mageia or 
openSUSE or {put your choice here}, or a BSD system such as FreeBSD, 
then you probably already have Python installed on your system.

To test if you have Python already installed on your Linux box, open a 
shell program (like konsole or gnome-terminal) and enter the command 
`python -V` as shown below:

    $ python -V
    Python 2.3.4

Note: `$` is the prompt of the shell. It will be different for you 
depending on the settings of your OS, hence I will indicate the prompt 
by just the `$` symbol.

If you see some version information like the one shown above, then you 
have Python installed already.

However, if you get a message like this one:

    $ python -V
    bash: python: command not found

...then, you don't have Python installed. This is highly unlikely but 
possible.

In this case, you have three ways of installing Python on your system:

1.  Install the binary packages using the package management software 
    that comes with your OS, such as `apt-get` in Ubuntu, `yum` in 
    Fedora Linux, `urpmi` on Mageia, `pkg_add` in FreeBSD, etc. Note 
    that you will need an internet connection to use this method.

2.  Alternatively, you can download the binaries from somewhere else 
    and then copy to your PC and install it.

3.  Finally, you can compile Python from the [source code](http://www.python.org/download/) and install 
    it. The compilation instructions are provided at the website. 

For Windows Users
-----------------

Visit [python.org/download/](http://www.python.org/download/) and 
download the latest version from this website (which was 2.7.6 as of 
the latest revision of this document. This is just 15.5 MB which is 
very compact compared to most other languages. The installation is 
just like any other Windows-based software.

Caution: When you are given the option of unchecking any optional 
components, don't uncheck any! Some of these components can be useful 
for you, especially IDLE.

An interesting fact is that about 70% of Python downloads are by Windows 
users. Of course, this doesn't give the complete picture since almost 
all Linux users will have Python installed already on their systems by 
default.

### Using Python in the Windows command line ###

If you want to be able to use Python from the Windows command line, then 
you need to set the PATH variable appropriately.

For Windows 2000, XP, 2003 , click on Control Panel -> System -> Advanced 
-> Environment Variables. Click on the variable named PATH in the 'System 
Variables' section, then select Edit and add `;C:\Python23` to the end of 
what is already there. Of course, use the appropriate directory name.

For older versions of Windows, add the following line to the file 
`C:\AUTOEXEC.BAT`: 

    PATH=%PATH%;C:\Python23

...and restart the system. For Windows NT, use the `AUTOEXEC.NT` file. 

Summary
-------

For a Linux system, you most probably already have Python installed on 
your system. Otherwise, you can install it using the package management 
software that comes with your distribution. For a Windows system, 
installing Python is as easy as downloading the installer and 
double-clicking on it. From now on, we will assume that you have Python 
installed on your system.

In [the next chapter](/docs/a-byte-of-python-2/first-steps.html), you 
will write your first Python program!

Read More
---------

*   [Previous Chapter](/docs/a-byte-of-python-2/introduction.html)
*   [Next Chapter](/docs/a-byte-of-python-2/first-steps.html)
