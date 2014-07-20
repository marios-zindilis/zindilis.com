<!-- -
Title: dirname
Description: Notes and links on dirname
First Published: 2014-04-08
- -->

<ol class="breadcrumb" itemprop="breadcrumb">
	<li><a href="/">Home</a></li>
	<li><a href="/docs/">Docs</a></li>
	<li><a href="/docs/dirname.html">dirname</a></li>
</ol>

`dirname`
=========

The `dirname` command will give you the path of the file that you provide as 
parameter, up to its parent directory. If the parameter is an absolute path, 
the absolute containing directory will be returned, otherwise it will be the 
relative path.

For example, for the file `/home/marios/.bash_aliases`:

```bash
mariosz@super-mario:~$ dirname /home/marios/.bash_aliases 
/home/marios
mariosz@super-mario:~$ dirname ~/.bash_aliases 
/home/marios
mariosz@super-mario:~$ dirname .bash_aliases 
.
```

See also
--------

*   [Unix: Find Directory Name From Path](http://www.cyberciti.biz/faq/unix-get-directory-name-from-path-command/)
