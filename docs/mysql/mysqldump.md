<!-- -
Title: mysqldump
Description: Notes on mysqldump
First Published: 2014-01-14
Last Updated: 2014-02-04
- -->

<ol class="breadcrumb" itemprop="breadcrumb">
	<li><a href="/">Home</a></li>
	<li><a href="/docs/">Docs</a></li>
	<li><a href="/docs/mysql/">MySQL</a></li>
	<li><a href="/docs/mysql/mysqldump.html">mysqldump</a></li>
</ol>

`mysqldump`
===========

These are my favorite MySQL backup and restore one-liners.

Backup
------

To back up a database named `stuff`:

```bash
time mysqldump -u root -p stuff | gzip > stuff.sql.gz
```

This pipes the clear text output from `mysqldump` directly into `gzip`, 
and prints the duration of the operation in the end.

Restore
-------

To restore the `stuff` database:

```bash
time gunzip -c stuff.sql.gz | pv | mysql -u root -p stuff
```

This decompresses the dump back in clear text, and feeds it to `mysql` 
through `pv`, which adds the perk of an indication of progress.
