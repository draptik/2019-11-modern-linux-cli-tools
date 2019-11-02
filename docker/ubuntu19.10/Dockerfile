FROM ubuntu:19.10

RUN apt-get update && apt-get upgrade -y

RUN apt-get install -y \
    bash \
    zsh \
    fish \
    vim \
    tmux \
    byobu \
    ranger \
    fd-find \
    fzf \
    bat \
    ruby
    
# python
RUN apt-get install -y python3-dev python3-pip
RUN pip3 install \
    thefuck

# ruby gems
RUN gem install \
    lolcat \
    tmuxinator

