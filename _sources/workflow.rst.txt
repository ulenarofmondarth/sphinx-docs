GitHub Workflow
===============

In the ``.github/workflows`` directory are two workflows used to build and publish ``sphinx-docs``.

If you want to use these in your own forked version of ``sphinx-docs`` you will need to setup a GitHub ``PERSONAL_ACCESS_TOKEN`` (see `GitHub's documentation <https://docs.github.com/en/authentication/keeping-your-account-and-data-secure/managing-your-personal-access-tokens>`_).


How they work
-------------

.. _bump-version:

.. rubric:: bump-version

When you push a commit to GitHub with the ``bump:`` prefix (see :ref:`commitizen-bump`) the ``.github/workflow/bump-version.yml`` workflow is triggered. This will prepare a release note (based on the commit comments relevant to this release).

The release note produced in ``bump-version`` is passed to other workflows as an artifact (see `upload-artifact <https://github.com/actions/upload-artifact>`_).

The `commitizen-action <https://github.com/commitizen-tools/commitizen-action>`_ in ``bump-version`` pushes a new tag, this triggers the ``.github/workflow/build-on_push.yml`` workflow.

.. rubric:: build-on-push

The ``build-on-push`` workflow:

- builds the docker image from source
- uploads the new image to the GitHub docker repository
- rebuilds this documentation
- creates a release bundle
- deploys the documentation to GitHub pages, and
- creates a new GitHub release.
