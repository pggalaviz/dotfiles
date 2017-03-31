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

# add rbenv to $PATH
status --is-interactive; and source (rbenv init -|psub)



#############################
##### Functions/Aliases #####
#############################

#----------------------------
#====> DIRECTORY LISTING
#----------------------------
# Compact view, show colors
function lc ; ls -G ; end
# Compact view, show hidden
function la ; ls -AF ; end
# shortcut to 'ls -al'
function ll ;  ls -al ; end

#-----------------
#====> NEOVIM
#-----------------
# open neovim
function v ; nvim $argv ; end
# always open neovim & not vim
function vim ; nvim $argv ; end

#---------------------
#====> NAVIGATION
#---------------------
# Folder Nav
function ..    ; cd .. ; end
function ...   ; cd ../.. ; end
function ....  ; cd ../../.. ; end
function ..... ; cd ../../../.. ; end
# back one folder
function b ; pushd .. ; end
#forward one folder
function f ; popd ; end

#-------------------
#====> HOMEBREW
#-------------------
# update & upgrade formulae
function bup
    brew update ;and brew upgrade 
end
# install formula
function bin
    brew install $argv
end
# uninstall formula including dependencies
function brm 
	brew deps $argv | xargs brew remove --ignore-dependencies | brew remove $argv | brew missing | cut -d: -f2 | sort | uniq | xargs brew install
end
# List installed formulae with version number(s)
function bls 
	brew list --versions
end
# List installed formulae & dependencies in a tree format
function bdeps 
	brew deps --installed --tree
end
# List outdated formulae
function bout
	brew outdated
end
# Check if formula is a dependency of another
function buse 
	brew uses --installed $argv
end
# Clean past version(s) of formulae including cache
function bcl
	brew cleanup -s ;and brew cask cleanup -s
end

#--------------
#====> MAC
#--------------

# Open Google Chrome
function chrome
	open -a google\ chrome
end
# Open Safari
function safari
	open -a safari
end
# Open current folder in finder
function fin 
	open -a Finder .
end
# Open text editor
function text 
	open -a TextEdit
end
# Show/hide 'dotfiles' system wide
function showall
	defaults write com.apple.finder AppleShowAllFiles YES ;and killall Finder
end
function hideall
	defaults write com.apple.finder AppleShowAllFiles NO ;and killall Finder
end
# Flush dns cache
function flush
	dscacheutil -flushcache
end
# Remove .DS_Store files recursively
function dsclean
	find . -type f -name .DS_Store -print0 | xargs -0 rm
end























