# Modern linux command line tools

This talk was inspired by Martin Leyrer's talk at Gulaschprogrammiernacht 19 (CCC).

- [GPN19 Moderne Kommandozeilen-Werkzeuge
  (youtube)](https://www.youtube.com/watch?v=8d8-PpcLc24&t=12s)

## Presentation

**This presentation is optimized for the terminal `kitty`.**

Since this is a talk for command line users,
the presentation is run within a shell using
[`patat`](https://github.com/jaspervdj/patat) ;-)

If you just need the content: Read `slides.md`.

In case you have problems with `patat`:

Remove the `images:` section from the `slides.md` file.

This section only works with terminals supporting image previews such `urxvt`.
It does not work with `gnome-terminal`!

### Prerequisites

- [`patat`: https://github.com/jaspervdj/patat](https://github.com/jaspervdj/patat)
- [`tmux`: TODO](TODO)
- [`byobu`: TODO](TODO)
- [`tmuxinator`: TODO](TODO)

### Usage

- start a shell (kitty, i.e. bash)
- increase font size of the terminal
- `./start-slides.sh`
- navigate with cursor keys (or vim bindings)

## Live-Demos

Run `./start-demos.sh`

This starts `tmuxinator`, which in turn starts a demonstration of all tools.
This will likely fail on your system...

