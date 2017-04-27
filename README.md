# dotfiles

My personal configuration files for MacOS

### Contents:

Includes files for configuring:
- Fish shell
- iTerm2
- Neovim
- Tmux 
- Hyper.js Terminal
- Alacritty Terminal

### Default config:

Contains plugins, dependencies and utilities to comfortably work with:
- Javascript
- Elixir
- Go
- Ruby
- HTML/CSS/SCSS/Stylus

But you can always customize it to add or remove stuff as you like.

### Use it!

If you like this configuration just clone this repo:
```
$ git clone https://github.com/pggalaviz/dotfiles ~/.dotfiles
```
then run:
```
cd ~/.dotfiles && ./setup.sh
```
Running `./setup.sh` will install (or update if already installed) several utilities and dependencies, via **Homebrew** (will install it if not found) and other methods, including: 
- Node.js
- Git
- Fish shell
- Neovim
- Golang
- Tmux
- Yarn
- Hyper.js
- Python3
- Rbenv
- Ruby-build
- gocode

And then symlink configuration to the respective paths. Follow the instructions at the end and you'll be all set.

### After installing:

`$GOPATH` will be set to `~/go`

For best UI use **iTerm2**, any 'True color' terminal emulator should work, including **Hyper.js**.
Color theme is called **Oceanic Next**, and it's configured to work on terminal, tmux and Neovim, there's an **iTerm2** color scheme on the **colors** folder that you can import.

You can install **Elixir** via **Homebrew** or any other method `brew install elixir`.

You can install almost any version of **Ruby** via **rbenv** `rbenv install **Version**`.

