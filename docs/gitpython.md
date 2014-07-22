<!-- -
Title: GitPython
Description: Notes and links on GitPython
First Published: 2014-06-12
- -->

<ol class="breadcrumb" itemprop="breadcrumb">
	<li><a href="/">Home</a></li>
	<li><a href="/docs/">Docs</a></li>
	<li><a href="/docs/gitpython.html">GitPython</a></li>
</ol>

GitPython
=========

Installation
------------

The easy way is to use one of the utilities provided by Python's 
`setuptools`. If you don't have `setuptools`, you can install them with:

```bash
sudo apt-get install python-setuptools
```

...or with:

```bash
sudo yum install python-setuptools
```

... depending on your platform. You can then install GitPython with: 

```bash
sudo easy_install GitPython
```

After that, it will be available for you to import and use:

```python
import git
```

Usage
-----

### Initialize a Repository Object ###

If you have a local directory that has already been initialized as a 
Git repository (hint: it should contain a `.git` subdirectory), then 
you can simply create an object of it:

```python
import git
repo = git.Repo('/home/marios/repositories/test-repo')
```

See Also
--------

*   [Google Group for Discussions on GitPython](https://groups.google.com/forum/#!forum/git-python)
