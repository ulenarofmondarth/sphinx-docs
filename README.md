[![Commitizen friendly](https://img.shields.io/badge/commitizen-friendly-brightgreen.svg)](https://commitizen-tools.github.io/commitizen/)


# sphinx-docs

Custom sphinx document generator.

Full documenatation for this project is available [here](https://ulenarofmondarth.github.io/sphinx-docs/).


# Developing this project

This project uses [`commitizen`](https://commitizen-tools.github.io/commitizen/) to enforce [conventional commits](https://www.conventionalcommits.org/).

As most Linux distributionts have a Python interpreter installed it seems reasonable to use this implementation. The simplest install of `commitizen` uses `pipx`, so this is used by the `prepare` script. If you cannot us `pipx` the refer to the `commitizen` site for installation instructions.

1. Install `pipx`
   ```bash
   sudo install pipx
   ```

1. Run the `prepare` script. This does some basic checks and setup.
   ```bash
   ./scripts/prepare
   ```
