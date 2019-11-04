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
    bat

# add non-root user
RUN useradd -ms /bin/bash homer
USER homer
WORKDIR /home/homer


# Powerline
# NOTE: There is probably a more elegant way to install this...
RUN git clone https://github.com/powerline/fonts.git --depth=1 powerline-fonts \
    && ./powerline-fonts/install.sh
RUN curl https://bootstrap.pypa.io/get-pip.py -o get-pip.py
RUN python3 get-pip.py --user
RUN rm get-pip.py
RUN .local/bin/pip install --user powerline-status
COPY shared/bash-add-powerline.txt bash-add-powerline.txt
RUN cat bash-add-powerline.txt >> .bashrc
RUN sh . .bashrc

