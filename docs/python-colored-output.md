<!-- -
Title: Colored output with Python
Description: How to get colored text output from Python
First Published: 2013-11-26
- -->

<ol class="breadcrumb" itemprop="breadcrumb">
	<li><a href="/">Home</a></li>
	<li><a href="/docs/">Docs</a></li>
	<li><a href="/docs/python-colored-output.html">Colored output with Python</a></li>
</ol>

Colored output with Python
--------------------------

Here's my stupid way of getting colored output from a Python script when 
run from the command line.

First, define one function per desired color:

```python
def   blue(message): return '\033[1;34m%s\033[1;m' % (message)
def  green(message): return '\033[1;32m%s\033[1;m' % (message)
def    red(message): return '\033[1;41m%s\033[1;m' % (message)
def yellow(message): return '\033[1;33m%s\033[1;m' % (message)
```

And then in the script, pass the message that you need to appear in 
color like this:

```
print red('File not found!')
```

Note that if the Python script is meant to run via cron, then you will 
get some ugly text in emails from cron :)
