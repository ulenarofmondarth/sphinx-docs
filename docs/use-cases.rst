Common Use-cases
================

These applications are typically contained in ``npm`` ``script`` directives or (by Mondarth project convention) in ``scripts/`` utility scripts.

Intialise documentation
-----------------------

If you have not used one of the Mondarth project templates then you can create an initial document framework using the following:

.. code:: bash

   cd <prolect root>
   mkdir docs
   docker run --rm --user "$(id -u):$(id -g)" -v "$(pwd)/docs":/docs -it ulenarofmondarth/sphinx-docs sphinx-quickstart

Answer the questions presented and you will see a basic documentation framework in ``docs/``.

.. note::

   Throughout this documentation I assume you selected ``No`` (the default) to maintaining in separat build directory.

How edit ``docs/conf.py``. I prefer the `Read the Docs <https://about.readthedocs.com/?ref=readthedocs.org>`_ style of documentation, so that theme is pre-installed in this image. Change the two lines shown below to use this theme.

.. code:: python

   extensions = ['sphinx_rtd_theme']

   html_theme = 'sphinx_rtd_theme'


Live Development Server
-----------------------

When editing documentation it is useful to see the site (and speifically the page you are editing) rendered live. This can be done using the ``sphinx-autobuild`` plugin that is installed with this image.

In the root of your ``docs/`` directory:

.. code:: bash

   
   docker run --rm --user "$(id -u):$(id -g)" --name docdevserver -d -p 8081:8000 -v "$(pwd)":/doc -w /doc ulenarofmondarth/sphinx-docs sphinx-autobuild --host 0.0.0.0 --port 8000 . _build/html

You will be able to access your documentation at `<http://localhost:8081>`_. Whenever you save a change to a document it will be rebuilt and the page you are currently browsing will be refreshed.

.. warning::

   Although this generally works reliably there are circumstances where the page is not automatically reloaded even though the documentation *is* rebuilt. In these cases you will need to manually reload the page.


Build Documentation Site
------------------------

To simply build the site for you documentation:

.. code:: bash

   docker run --rm --user "$(id -u):$(id -g)" --name docdevserver -d -p 8081:8000 -v "$(pwd)":/doc -w /doc ulenarofmondarth/sphinx-docs make html

