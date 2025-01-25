FROM sphinxdoc/sphinx


WORKDIR /docs
ADD requirements.txt /docs
RUN python3 -m pip install --root-user-action=ignore -r requirements.txt


LABEL vendor="UlenarOfMondarth" \
      description="Mondarth custom Sphinx image" \
      version="0.4.0"
