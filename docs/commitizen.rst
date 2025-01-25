.. _commitizen:

Commitizen
==========


This project uses ``commitizen`` (see `commitizen documentation <https://commitizen-tools.github.io/commitizen/getting_started/>`_) to standardise git commit messaging.

.. _commitizen-commit:

commit
------

You can commit using ``cz commit`` (or simply ``cz c``). This will take you through a series fo prompts to ensure your commit message meets the project standard.

It you use ``git commit`` directly your comment will be validated against the project standard. Your commit will fail of your commit message does not comply, so it is generally simplest to use ``cz c``.

.. _commitizen-bump:

bump
----

Whenever you ``push`` to ``main`` on the remote repository the ``bump-version`` workflow will be triggered (see :ref:`bump-version`). There is no need to ``cz bump`` the prolect locally.
