#!/bin/bash


# fish
mkdir -p ~/.config/fish
mkdir -p ~/.config/fish/functions
ln -sf `pwd`/fish/config.fish ~/.config/fish
ln -sf `pwd`/fish/functions/fish_prompt.fish ~/.config/fish/functions

# hyper
ln -sf `pwd`/hyper/hyper.js ~/.hyper.js
