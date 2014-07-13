<!-- -
Title: dracut
Description: Notes and links on dracut
First Published: 2014-07-13
- -->

dracut
======

Copying from the man page:

> **dracut** creates an initial image used by the kernel for preloading the 
> block device modules (such as IDE, SCSI or RAID) which are needed to access 
> the root filesystem.

dracut reads configuration files in [/usr/lib/modprobe.d/](/docs/lfs/usr/lib/modprobe.d/) 
and in [/etc/modprobe.d/](/docs/lfs/etc/modprobe.d/) by default, unless run in 
*generic* mode, in which case it ignores host-specific configuration in 
`/etc/modprobe.d/`.

Again, copying from the man page:

        -H, --hostonly
            Host-Only mode: Install only what is needed for booting the local 
            host instead of a generic host.

The default configuration is host-only. This is defined in `/etc/dracut.conf`, 
in the line:

        hostonly="yes"


