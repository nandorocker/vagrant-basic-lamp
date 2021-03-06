Vagrant: Basic Lamp
===================
A script to create a basic Ubuntu 12.04 LAMP Vagrant box. The goal is to build a new LAMP environment from scratch without having to download a large custom box all at once.

**Disclaimer:** this was created for my personal used, and is based on my personal preferences and research. Your (constructive) feedback is more than welcome.

Requirements:
-------------
[Vagrant](http://vagrantup.com)

What's In It
------------
* Ubuntu 12.04 (precise64)
* PHP 5 (plus modules: mysql, gd, curl)
* MySQL-server
* Apache
* PHPmyAdmin
* Heroku
* Some basic system stuff: VIM, curl, Git-core

Everything that requires a password is using an empty one, since this only for **local** staging purposes.

How To Use
----------
Clone the repo to a separate directory from your project:

`$ git clone git@github.com:nandorocker/vagrant-basic-lamp.git`

Now copy the `Vagrantfile` **and** `setup/` directory into your project (replace *[path-to-your-project]* with the actual path):

`$ cp Vagrantfile [path-to-your-project] && cp setup/* [path-to-your-project]`

Navigate to your project's directory. Customize the Vagrantfile to reflect your project details (be sure to edit the `forwarded_port` to a port you're not currently using!), and start the Vagrant box:

`$ vagrant up`

Sit tight and watch the show. Once you're thrown back into the terminal, you're all set. You can access your box:

`$ vagrant ssh`.

Credits
-------
Thanks for checking out my first public repo.

A bajillion thanks to [@djwglpuppy](https://github.com/djwglpuppy) for the mentoring and infinite patience. :) A lot of snippets here are either from your code, or inspired by it.
