This is a guide for open source projects looking to prepare for an event such as a workshop, hackathon, or sprint.

To contribute, you can submit a pull request, file an issue in the issue tracker, or email the main author.

This document is licensed `CC BY <a href="http://creativecommons.org/licenses/by/3.0/us/>`_.

For Developers
======================

To install the project, fork this repository and clone it to your computer.

If you don't have it installed, you may need to get pypi-install by running (on Debian and its derivatives)::

   sudo apt-get install python-stdeb

Then, get the dependencies for the project by typing the following two commands (on Debian and its derivatives)::

   sudo apt-get install python-sphinx
   sudo pypi-install sphinx-bootstrap-theme

You may also need to install GNU make, which is usually available on Debian via one of the following::

   sudo apt-get install build-essential # Also installs a bunch of compilers, useful for other projects too
   sudo apt-get install make # Installs only the base utility, less useful in a broad sense

Once you've installed the dependencies, you can render the project by typing::

   make html

You will find the rendered pages in *_build/html*.  A good place to start looking around is *index.html*.
