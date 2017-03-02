##############################
##### Fish Configuration #####
##############################

# set locale
set -x LANG en_US.UTF-8

# set default editor
set -x EDITOR nvim

# override command color
set -x fish_color_command normal

#############################
##### Personal Settings #####
#############################

# rbenv
status --is-interactive; and source (rbenv init -|psub)


#####################
##### Functions #####
#####################

# always open neovim
function vim
	nvim $argv
end

# back one folder
function b
  pushd ..
end

#forward one folder
function f
  popd
end

#List all installed formulae with version number(s)
function brew_l -d "List all installed formulae with version number(s)"
	brew list --versions
end

# List all formulae and dependencies in a tree format
function brew_deps -d "List all formulae and dependencies in a tree format"
	brew deps --installed --tree
end

# brew uninstall formula including dependencies
function brew_del -d "uninstall brew formula including dependencies"
	brew deps $argv | xargs brew remove --ignore-dependencies | brew remove $argv | brew missing | cut -d: -f2 | sort | uniq | xargs brew install
end

# Check if formula is a dependency of another
function brew_use -d "Check if formula is a dependency of another"
	brew uses --installed $argv
end

# Clean past version(s) of formulae including cache
function brew_clean -d "Clean past version(s) of formulae including cache"
	brew cleanup -s
end
