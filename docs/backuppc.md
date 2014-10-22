<!-- -
Title: BackupPC
Description: Notes and links on BackupPC
First Published: 2014-10-21
- -->

<ol class="breadcrumb" itemprop="breadcrumb">
	<li><a href="/">Home</a></li>
	<li><a href="/docs/">Docs</a></li>
	<li><a href="/docs/backuppc.html">BackupPC</a></li>
</ol>

BackupPC
========

Random tips for BackupPC:

*   On your client systems (those that will be backed up by BackupPC), rotate 
    your logs (whether compressed or not) with dates in the filenames, instead 
    of appending prefixes such as `.1`, `.2`, `.3`, etc. The benefit from this 
    is that BackupPC will ignore old logs on new runs, since they will have the 
    same name and the same checksum. If you rotate logs with numbered names, 
    BackupPC will transfer them again, since the name will have changed. This 
    configuration is achieved with the `dateext` parameter set in `logrotate` 
    configuration file, which on CentOS 6 is at `/etc/logrotate.conf`, by 
    default.
