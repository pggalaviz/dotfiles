# dotfiles

My personal configuration files for MacOS (Working on Linux support)

## Contents:

Includes files for configuring:
- Fish shell
- iTerm2
- Neovim
- Tmux
- Hyper.js Terminal
- Phoenix (window and app manager)

## Default config:

Contains plugins, dependencies and utilities to comfortably work with:
- Javascript
- Elixir
- Rust
- Go
- Crystal
- Ruby
- HTML/css/scss/stylus

But you can always customize it to add or remove stuff as you like.

## Use it!

If you like this configuration just clone this repo:
```
git clone https://github.com/pggalaviz/dotfiles.git ~/.dotfiles
```
then run:
```
cd ~/.dotfiles && ./install.sh
```
Running `./install.sh` will run different instructions for OSX and Linux.
On OSX, several utilities and dependencies will be installed via **Homebrew, Git & Node** (will ask to install them if not found).

Once Homebrew, Git & Node are detected, these will install by default:
- **tree** (Helps to visualize directory tree on terminal)
- **ripgrep** (Line oriented search tool, better & faster than The Silver Searcher)
- **Python 3** (Programming language)
- **reattach-to-user-namespace** (Hack to comfortably work with MacOS clipboard)

Then you'll be prompted to install the following programs/tools:
- Fish shell
- Neovim
- Rust
- Golang
- Elixir
- Crystal
- Tmux
- Hyper.js terminal
- Rbenv (Including ruby-build)
- Universal ctags
- Some Node global packages (tern, standard, prettier, etc.)

These are not strictly required, however they are strongly recomended to have everything
up and running easily, everything is configured to work with each other by default. By accepting when asked by the prompt, they'll be installed and configured, symlinks to the respective paths will also be created. Follow the instructions at the end and you'll be mostly set.

I'm working on Linux support. (Comming soon!)

## After installing:

### OSX

`$GOPATH` will be set to `~/go`

For best UI use **iTerm2**, any 'True color' terminal emulator should work, including **Hyper.js**.
Main color theme is called **Oceanic Next** but configuration for **Nova** is also included, they are configured to work on terminal, tmux and Neovim, there are **iTerm2** color schemes on the **colors** folder that you can import.

In order to fully display UI symbols, you need a 'Powerline patched font', you can download them
from [https://github.com/powerline/fonts](https://github.com/powerline/fonts), I recomend using
**Source Code Pro Medium**

You can install almost any version of **Ruby** via **rbenv**: `rbenv install **Version**`.

### Linux

Linux is not supported yet, working on it.

## Updates

To update files, dependencies, tools and programs you can run the **update.sh**
comand: `~/.dotfiles/update.sh`, you'll then be prompted  to choose what you want to
update. You should have run `install.sh` command at some point before attempting
to run this command.

**Important:** Everytime you add a file to the `nvim/plugin` folder, you'll need
to run this command so a symlink to the new file can be created.

## Other

I want to thank [Mark Hartington](https://github.com/mhartington) for his contributions that
helped as the base to this configuration.

If you have any questions or just want to chat you can find me on Twitter:
[@pggalaviz](http://twitter.com/pggalaviz)
