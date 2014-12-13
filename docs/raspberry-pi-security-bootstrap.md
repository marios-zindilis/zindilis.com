<!-- -
Title: Raspberry Pi Security Bootstrap
Description: Initial security configuration of a new Raspberry Pi
First Published: 2014-12-13
- -->

<ol class="breadcrumb" itemprop="breadcrumb">
    <li><a href="/">Home</a></li>
    <li><a href="/docs/">Docs</a></li>
    <li><a href="/docs/raspberry-pi-security-bootstrap.html">Raspberry Pi Security Bootstrap</a></li>
</ol>

Raspberry Pi Security Bootstrap
===============================

<p class='lead'>These are my notes on the first steps of improving security on 
a new Raspberry Pi. The default configuration that an RPi comes with might be 
suitable for a development environment in a private or isolated network, but 
if you intend on exposing your RPi to the world then you need to tweak that 
configuration to be more robust. The commands mentioned here have been tested 
on a Raspberry Pi B+, running a fresh installation of 
<a href='http://www.raspbian.org/'>Raspbian</a>.</p>

<div class='z-callout z-callout-danger'><h4>Disclaimer</h4>
<p>Security is fluid and open-ended. The following are mere suggestions. 
Taking these steps will hopefully reduce your exposure, but does not guarantee 
complete safety. Nothing does.</p></div>

User configuration
------------------

1.  This goes without saying: **Change the default user's password**. By 
    default,     the RPi user is `pi` and her password is `raspberry`. Change 
    that as soon as you get your operating system runnning, either by running 
    `passwd` as the `pi` user, or by running `sudo raspi-config` and selecting 
    the option for password change.

2.  **Change the default user's `sudo` configuration**. By default, the `pi` 
    user can execute anything with `sudo`, without providing a password. As 
    the `pi` user, do:

        sudo visudo

    ...and the change the line:

        pi ALL=(ALL) NOPASSWD: ALL

    ...to:

        pi ALL=(ALL) ALL

3.  Additionally, you might want to **disable the default `pi` user** 
    altogether, and create another user that you will use on your RPi. As the 
    user `pi`, do:

        sudo adduser myuser

    ...and answer the questions. Only the password question is important, the 
    rest can be left blank. Then, to make the new user a sudoer, do:

        sudo visudo

    ...and add this line in the end of the file:

        myuser ALL=(ALL) ALL

    Additionally, since login will be disabled for `pi`, you might as well 
    comment out the line in `/etc/sudoers` that refers to that user. Finally, 
    to disable login for the default `pi` user, logout from `pi` and login as 
    the new user that you created, and do:

        sudo usermod --lock pi
        sudo usermod --shell /sbin/nologin pi

SSH Configuration
-----------------

1.  **Forbid SSH login for user `root`**. If your RPi is exposed to the world, 
    it will get attacked with SSH attempts for common usernames and passwords, 
    which is yet another reason to disable the default `pi` username. Another 
    username that your RPi will be hammered with is `root`. Now, you can't 
    disable the root account, but you can disallow logins for it. To do that, 
    edit the file `/etc/ssh/sshd_config`, and change the line:

        PermitRootLogin yes

    ...with:

        PermitRootLogin no

    ...and then restart the SSH daemon:

        sudo service ssh restart

2.  **Restrict Incoming IPs for SSH**, using entries in `/etc/hosts.allow` and 
    `/etc/hosts.deny`. For example, I allow SSH on my RPi from my internal LAN 
    subnets (192.168.x.x), and from one public IP only (1.2.3.4 in this 
    example). To achieve that, put in `/etc/hosts.allow`:

        sshd: 192.168. 1.2.3.4

    ...and in `/etc/hosts.deny`:

        sshd: ALL

     Attempting to login to the RPi from a restricted host will return an 
     error to the client:

        marios@wst ~ $ ssh myuser@192.168.23.123
        ssh_exchange_identification: Connection closed by remote host

     ...and will also create a log in `/var/log/auth.log`:

        Dec 13 11:40:48 rpi sshd[3456]: refused connect from 172.16.1.2 (172.16.1.2)

Firewall Configuration with `iptables`
--------------------------------------

On my RPi running a freshly installed Raspbian OS, `iptables` was already 
installed, and it was running  with an empty rule set, i.e. all traffic was 
allowed in all directions. Furthermore, Raspbian does not include a SysV 
script for `iptables`. This functionality is offered by the 
`iptables-persistent` package.

1.  Install `iptables-persistent`, to help make the `iptables` rules survive a 
    reboot:

        sudo apt-get install iptables-persistent

    If you accept the defaults during the installation, the currently running 
    empty rule set of `iptables` will be saved in `/etc/iptables/rules.v4`.
    After the installation, you can manage your firewall with:

        service iptables-persistent {start|restart|reload|force-reload|save|flush}

    Here are the contents of that file, with the default configuration of the 
    firewall:

        # Generated by iptables-save v1.4.14 on Sat Dec 13 14:23:03 2014
        *filter
        :INPUT ACCEPT [1291:113154]
        :FORWARD ACCEPT [0:0]
        :OUTPUT ACCEPT [828:105910]
        COMMIT
        # Completed on Sat Dec 13 14:23:03 2014

