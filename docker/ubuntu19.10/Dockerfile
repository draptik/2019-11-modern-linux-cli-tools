FROM ubuntu:19.10

RUN apt-get update && apt-get upgrade -y

# basic packages
RUN apt-get install -y \
    bash \
    git \
    wget \
    curl \
    vim

# otherpackage managers (ruby, python, ...)
RUN apt-get install -y \
    ruby \
    python3-dev \
    python3-pip

# python
RUN pip3 install \
    thefuck

# ruby gems
RUN gem install \
    lolcat \
    tmuxinator

# modern packages
RUN apt-get install -y \
    zsh \
    fish \
    tmux \
    byobu \
    ranger \
    fd-find \
    fzf \
    bat \
    kitty \
    rxvt-unicode \
    ruby-dev \
    ruby-colorize


# add non-root user
RUN useradd -ms /bin/bash homer
USER homer
WORKDIR /home/homer

# Powerline
COPY shared/install-powerline.sh install-powerline.sh
RUN sh install-powerline.sh

COPY shared/bashrc-powerline.txt bashrc-powerline.txt
RUN cat bashrc-powerline.txt >> .bashrc

# Nerdfonts 
#
# The consuming shell (this is a docker container!) must have the font installed!
#
# (requirement for colorls)
# COPY shared/install-nerd-fonts.sh install-nerd-fonts.sh
# RUN sh install-nerd-fonts.sh

# colorls 
#   - ruby gem must be installed as root
#   - prerequisite: nerd-fonts
USER root
RUN gem install colorls
# back to USER non-root
USER homer
COPY shared/bashrc-colorls.txt bashrc-colorls.txt
RUN cat bashrc-colorls.txt >> .bashrc

# reload .bashrc
RUN sh . .bashrc
