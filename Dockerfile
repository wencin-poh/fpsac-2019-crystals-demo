FROM sagemath/sagemath:8.7

# Inspired from https://mybinder.readthedocs.io/en/latest/dockerfile.html#preparing-your-dockerfile
# Make sure the contents of our repo are in ${HOME}
COPY --chown=sage:sage . ${HOME}
RUN sudo apt-get update && sudo apt-get install graphviz
RUN sage -pip install dot2tex
