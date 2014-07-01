<!-- -
Title: Create test databases in MySQL
Description: How to create test databases in MySQL
First Published: 2014-04-12
- -->

<ol class="breadcrumb" itemprop="breadcrumb">
	<li><a href="/">Home</a></li>
	<li><a href="/docs/">Docs</a></li>
	<li><a href="/docs/mysql/">MySQL</a></li>
	<li><a href="/docs/mysql/mysql-create-test-database.html">Create test databases in MySQL</a></li>
</ol>

Create test databases in MySQL
==============================

Sometimes you need to create some database on a development MySQL server, to 
run some tests on, and you want to populate it with many records, to make your 
tests more meaningful. This document lists a couple of quick and dirty ways 
that I use to achieve that.

Using `/usr/share/dict/words`
-----------------------------

On most Linux distributions, there is a file at `/usr/share/dict/words` which 
simply contains a list of words, each on a separate line. On my Linux Mint 
15 installation, I count more than 99000 lines. The following commands will put 
those words in a table called `words`, in a database called `test`, one word 
per table row.

Create the table:

```mysql
mysql> CREATE TABLE words (id INT AUTO_INCREMENT, word VARCHAR(256));
```

Populate the table with the words. I 'm using double quotes to wrap the words, 
since many of them already contain a single quote:

```bash
while read word; do mysql test -e "INSERT INTO words (word) VALUES (\"$word\")"; done < /usr/share/dict/words
```

Using `/var/log/messages`
-------------------------

I have also used the contents of `/var/log/messages` to populate a table, and 
that is documented in the blog post [How to create a large MySQL database for 
tests](/blog/2012/11/13/how-to-create-a-large-mysql-db-for-tests.html). That is 
a painfully slow method, but can create tables that are many GigaBytes in size, 
which might be necessary for some tests.
