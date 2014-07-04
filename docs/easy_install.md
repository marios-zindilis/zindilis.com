<!-- -
Title: easy_install
Description: easy_install
First Published: 2013-10-25
Last Updated: 2014-03-23
- -->

<ol class="breadcrumb" itemprop="breadcrumb">
	<li><a href="/">Home</a></li>
	<li><a href="/docs/">Docs</a></li>
	<li><a href="/docs/easy_install.html">easy_install</a></li>
</ol>

easy_install
============

`easy_install` is a tool for installing Python modules from PyPI.

Installation on CentOS
----------------------
On CentOS, `easy_install` is provided by the package `python-setuptools`:

    yum whatprovides */easy_install
    ... 
    python-setuptools-0.6.10-3.el6.noarch : Easily build and distribute Python packages

To install it:

    yum -y install python-setuptools

You can then use it to install a module, by just providing the module 
name as the only parameter, e.g:

    easy_install markdown2

Usage
-----

To install a Python module from PyPI:

    sudo easy_install module_name

To upgrade:

    sudo easy_install --upgrade module_name
