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

# ruby gems
RUN gem install \
    lolcat \
    tmuxinator \
    colorls

# add non-root user
RUN useradd -ms /bin/bash homer
USER homer
WORKDIR /home/homer

# Powerline
COPY shared/install-powerline.sh install-powerline.sh
RUN sh install-powerline.sh

COPY shared/bashrc-powerline.txt bashrc-powerline.txt
RUN cat bashrc-powerline.txt >> .bashrc

# colorls
# Nerdfonts (the consuming shell (this is a docker container!) must have the font installed!)
COPY shared/bashrc-colorls.txt bashrc-colorls.txt
RUN cat bashrc-colorls.txt >> .bashrc

# reload .bashrc
RUN sh . .bashrc
