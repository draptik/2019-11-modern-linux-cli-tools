---
title: ░▒▓ modern linux command line tools ▓▒░
author: patrick @drechsler    / hackerkegeln 2019-11
patat:
    slideLevel: 1
    wrap: true
    margins:
        left: 8
        right: 2
    theme:
        emph: [vividBlue, onVividBlack, italic]
        strong: [bold, dullMagenta, onVividBlack]
    images:
        backend: 'w3m'
        path: '/usr/lib/w3m/w3mimgdisplay'
---

# "modern" is relative...

things I picked up...

# Target audience

- linux desktop CLI users
- linux admins

```text
  __________________________________________
 / This is the year of linux on the desktop \
|                                            |
|  Windows10 has WSL ;-)                     |
 \                                          /
  ------------------------------------------
        \   ^__^
         \  (oo)\_______
            (__)\       )\/\
                ||----w |
                ||     ||
```

# Linux tooling philosophy

- **do one thing (and only one thing!) well**

- **chaining**

- _sound familiar? (hint: functional programming...)_

# Overview

- `byobu`
- `ranger`
- `bat`
- `fd`
- `fzf`
- unix-porn

# Why? Improvements to...

- **productivity**

- **optics**
    - unix porn `PS1`, `ls`

# Learn the basics

- have knowledge of the **editor war** 
    - https://en.wikipedia.org/wiki/Editor_war
    - (`spacemacs` http://spacemacs.org/)

- `emacs` and `vim` keybindings
    - learn navigation, copy & paste, (and how to exit)
    - pick one and become fluent

- `cat`, `less`, `find`, `grep`, `sed`, `tail`, `awk`, `dd`, `rsync`, ...

# shells

**...there is no "best shell"...**

- `bash`

- `zsh`

- `fish`

# What is the difference between **terminal** and **shell**?

## terminal
  
- **colors**
- **fonts**
- **interactions**
    - keyboard shortcuts
    - mouse interaction (copy & paste, scrolling, selection, ...)

## shell

- **everything else** (f.ex. **`PS1`**, scripting language)

# What is the best terminal?

- use your default
- but think about enriching your output!
    - I want symbols in my CLI!

## Unicode

Requires font support...

- € `&#8364;`
- &#9203; `&#9203;`
- &#128169; `&#128169;`

<!-- 
    &#128169; is the same as 💩 (for details see https://www.fileformat.info/info/unicode/char/1f4a9/index.htm)
-->

# fish: The new kid on the block

- https://fishshell.com

- **fisher** / **oh-my-fish**
    - package manager
  
- https://github.com/jorgebucaran/fisher

- category: shell

# zsh

- **oh-my-zsh**: https://ohmyz.sh

    - package manager
    - themes
    - plugins

- category: shell

# bash

- oh-my-bash: https://ohmybash.github.io (~500 stars)
- **bash-it**: https://github.com/Bash-it/bash-it (~10.000 stars)

- category: shell

# PS1: liquidprompt

- available for `zsh`, `bash`, etc

- https://github.com/nojhan/liquidprompt

- category: unix-porn

# PS1: Powerline

- started as fancy statusline for `vim`...

- available for `zsh`, `bash`, etc

- https://github.com/powerline/powerline

- category: unix-porn

# byobu

- **byobu** `tmux`-wrapper for non-vim users

    - `tmux` https://github.com/tmux/tmux/wiki

- http://byobu.co/

- category: productivity

# Ranger

- file explorer
- 2 layout options
    - miller columns
    - multipane (similar to Midnight commander)
- key bindings: see `~/.config/ranger/rc.conf` starting at line 300...
- with image support for certain terminals
    - `iterms2`
    - `urxvt`
    - `kitty`
    - not `gnome-terminal` (!)
- https://ranger.github.io
- category: navigation, file system

# bat

- `cat` & `less` with syntax highlighting

- From the docs:

    _bat looks good on a dark background by default. However, if your terminal uses a light background, some themes like GitHub or OneHalfLight will work better for you._

- https://github.com/sharkdp/bat

- category: read / file display

# fzf

- fuzzy search
- `find * -type f | fzf`
- see `locate` for a static indexer
- category: search

- https://github.com/junegunn/fzf

# fd

- simpler alternative to `find`
- category: search

- https://github.com/sharkdp/fd

# progress

- attach to any kind of copy
- category: monitoring

- https://github.com/Xfennec/progress

# Ultimate Plumber (up)

- interactive piping
- instant live preview

- https://github.com/akavel/up
- category: search, file manipulation, interactive

# lolcat

- Rainbows and unicorns

- https://github.com/busyloop/lolcat
- category: fun, unix porn

# ttyd

- share your terminal over the web

- https://tsl0922.github.io/ttyd/
- category: network, dangerous

# WTF

- personal dashboard

- https://wtfutil.com

# no-more-secrets

- when the tv team comes in your office

- https://github.com/bartobri/no-more-secrets
- category: fun, unix porn

# thefuck

- fix common typos / mistakes
- category: productivity

- https://github.com/nvbn/thefuck

# patat

- nerdy slides in your shell
- `patat` runs in a terminal (similar to `revealJs` for the browser)
- Pandoc syntax (f. ex. markdown)
- syntax highlighting
- emojis: :smile:
- experimental image support in some terminals (same as for `ranger`)
    - `iterm2`
    - `urxvt`
    - `kitty`

- Haskell engine
- category: presentation, slides, unix porn
- https://github.com/jaspervdj/patat

# colorls

- pimp the `ls` command
- NerdFonts: https://github.com/ryanoasis/nerd-fonts
- icons

- https://github.com/athityakumar/colorls
- category: unix porn

# Looking for: easy way to switch between themes

any pointers?

# END

- did I miss your favorite tool?
