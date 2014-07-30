<!-- -
Title: Facepalm of the day 2
Author: Marios Zindilis
First Published: 2012-05-01
Last Updated: 2014-01-26
- -->

Facepalm of the day 2
=====================

Cisco devices will commit a command that you typed in configuration 
mode when you hit Ctrl+Z to fall back to enable mode.

For example, while configuring an interface, if you type `shutdown` 
and then press Ctrl+Z to exit configuration mode, the `shutdown` 
command is executed. Note, that this does not happen in PacketTracer, 
but it does happen in GNS3, and -of course- on real devices.
