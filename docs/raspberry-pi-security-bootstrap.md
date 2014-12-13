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
Taking these steps will hopefully reduce your exposure, but does not guarantee \
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

    Finally, to disable login for the default `pi` user, logout from `pi` and 
    login as the new user that you created, and do:

        sudo usermod --lock pi
        sudo usermod --shell /sbin/nologin pi

4.  **Forbid SSH login for user `root`**.
