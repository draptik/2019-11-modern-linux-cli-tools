FROM archlinux/base:latest

RUN pacman -Syu --noconfirm
RUN pacman -S --noconfirm git

RUN git clone https://aur.archlinux.org/yay.git
RUN cd yay && makepkg -si

