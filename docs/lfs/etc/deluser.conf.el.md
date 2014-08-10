<!-- -
Title: /etc/deluser.conf
Description: /etc/deluser.conf προεπιλογές για το deluser
First Published: 2012-02-16
Last Updated: 2013-11-23
- -->

<ol class="breadcrumb" itemprop="breadcrumb">
    <li><a href="/">Home</a></li>
    <li><a href="/docs/">Docs</a></li>
    <li><a href="/docs/lfs/">Linux Filesystem</a></li>
    <li><a href="/docs/lfs/etc/">etc</a></li>
    <li><a href="/docs/lfs/etc/deluser.conf.el.html">deluser.conf</a></li>
</ol>

`/etc/deluser.conf`
===================

Το αρχείο ρυθμίσεων `/etc/deluser.conf` περιέχει τις προεπιλογές του 
προγράμματος `deluser`, για διαγραφή των χρηστών. Ένα παράδειγμα 
αρχείου: 

    # /etc/deluser.conf: 'deluser' configuration.
     
    # Remove home directory and mail spool when user is removed
    REMOVE_HOME = 0
     
    # Remove all files on the system owned by the user to be removed
    REMOVE_ALL_FILES = 0
     
    # Backup files before removing them. This options has only an effect if
    # REMOVE_HOME or REMOVE_ALL_FILES is set.
    BACKUP = 0
     
    # target directory for the backup file
    BACKUP_TO = "."
     
    # delete a group even there are still users in this group
    ONLY_IF_EMPTY = 0
     
    # exclude these filesystem types when searching for files of a user to backup
    EXCLUDE_FSTYPES = "(proc|sysfs|usbfs|devpts|tmpfs)"
