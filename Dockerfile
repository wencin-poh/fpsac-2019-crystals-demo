FROM sagemath/sagemath:8.7

# Inspired from https://mybinder.readthedocs.io/en/latest/dockerfile.html#preparing-your-dockerfile
# Make sure the contents of our repo are in ${HOME}
COPY --chown=sage:sage . ${HOME}

# Ignore APT warnings about not having a TTY
ENV DEBIAN_FRONTEND noninteractive

RUN pwd

RUN sudo apt-get -q update && sudo apt-get -qy install graphviz
RUN sage -pip install dot2tex
RUN sudo apt-get -q clean
