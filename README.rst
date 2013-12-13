This is a guide for open source projects looking to prepare for an event such as a workshop, hackathon, or sprint.

To contribute, you can submit a pull request, file an issue in the issue tracker, or email the main author.

Text in this document may be shared under the terms of Creative Commons Zero <http://creativecommons.org/publicdomain/zero/1.0/>.

======================================
Installation
======================================

For Developers
======================

To install the project, fork this repository and clone it to your computer.  Get dependencies
by typing the following two commands::

   sudo apt-get install python-sphinx
   sudo pypi-install sphinx-bootstrap-theme

You may need to install pypi-install in order to run the above commands.  To install pypi-install, type::

   sudo apt-get install python-stdeb

Once you've installed the dependencies, you can render the project by typing::

   make html

You will find the rendered pages in *_build/html*.  A good place to start looking around is *index.html*.

