Setup for Developers
====================

How to setup to develop ``sphinx-docs``.

Pre-requisistes
---------------

You will need to install the following on the development host:

- ``git`` Required to obtain the project and submit changes.

   You can obtain ``git`` from https://git-scm.com/.

- ``python`` Python is required for some of the administation functions.

   .. note:: Python is used because Sphinx is a Python tool so we remain consitent throughout the project.

- ``docker`` This is required to build and test the ``sphinx-docs`` image.

   You can obtain ``docker`` from https://www.docker.com/.


Optional
~~~~~~~~

The following are not required, but may be helpful:

- ``act`` This allows you to test the GitHub workflow.

  ``act`` is available from https://github.com/nektos/act.

Starting Work
-------------

Once you have the pre-requisites installed...

If you are not a member of the ``ulenarofmondarth`` organisation (most of you), then fork the repository, clone your forked repository to your development host, and set the project up for development.

.. code-block::

   git clone <your repository>
   cd <workspace>
   ./script/prepare

This will install the :ref:`commitizen` hooks into git, ensuring consitent commenting.

