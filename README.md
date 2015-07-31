fig2coreos
==========
Convert fig.yml to CoreOS formatted systemd configuration files

Install
-------

	$ sudo gem install fig2coreos
	$ fig2coreos
	Usage: fig2coreos [options] APP_NAME FIG_YAML OUTPUT_DIRECTORY
    	-t, --type TYPE                  Output type: fleet (default) or vagrant (generate a Vagrantfile)
    	-h, --help                       Display this screen

Usage
-----

To convert any fig.yml into a set of CoreOS systemd configuration files, just point the command to your fig.yml file and a directory to put your CoreOS files in:

	$ fig2coreos app-name fig.yml coreos-dir
	$ cd coreos-dir
	$ fleetctl start *

To see how to setup fleetctl and CoreOS, here is an end-to-end tutorial: https://labs.ctl.io/building-your-first-app-on-coreos/

Use with Vagrant
----------------

If you select vagrant output type, fig2coreos will assume you are running this locally with vagrant and VirtualBox installed, so it will create a Vagrantfile which you can run vagrant up in and have a CoreOS running locally with the equivalent of your fig.yml running in it.

	$ cd coreos-dir
	$ vagrant up

The fig2coreos command auto-generates etcd discovery registration and fleet integration as well, so you can inspect your app easily.

	$ vagrant ssh
	$ fleetctl list-units

