Shrapnel demo
-------------

This project builds a sample virtual-machine running the Shrapnel (https://github.com/ironport/shrapnel)
library.

Shrapnel comes with out-of-the-box support for running shrapnet in a virtual machine.


Installing
----------

The demo uses the Vagrant virtual machine library.  The instructions are available from http://vagrantup.com/,
but essentially you just need to run::

    gem install vagrant

to get started.

Running
-------

To run the virtual machine, you just need to run these commands::

    vagrant up
    vagrant ssh

Once you're in the shell, you should have a working python installation with Shrapnel installed.
The VM uses the `requirements.txt` file to install nesessary packages.


TODO
----

Currently, Shrapnel doesn't install via pip.
