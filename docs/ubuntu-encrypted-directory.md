<!-- -
Title: Create an encrypted directory on Ubuntu
First Published: 2014-02-04
Last Updated: 2014-09-16
- -->

<ol class="breadcrumb" itemprop="breadcrumb">
	<li><a href="/">Home</a></li>
	<li><a href="/docs/">Docs</a></li>
	<li><a href="/docs/ubuntu-encrypted-directory.html">Create an encrypted directory on Ubuntu</a></li>
</ol>

Create an encrypted directory on Ubuntu
=======================================

These are very brief instructions on how to create an encrypted directory on 
an Ubuntu system. A usage scenario for this, is that you can keep your files 
encrypted while stored on a cloud storage service, and decrypt them on-demand 
only when necessary.

Install encfs:

    sudo apt-get install encfs

Link encrypted and decrypted direcories:

    encfs ~/.encrypted ~/visible

If the directories don't exist, encfs will ask to create them.

To umount:

    fusermount -u ~/visible

To re-mount:

    encfs ~/.encrypted ~/visible
