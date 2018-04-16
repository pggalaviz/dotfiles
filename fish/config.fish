##############################
##### Fish Configuration #####
##############################
function fish_greeting
    echo "----------------------------------------------------------------------------"
    echo "“Los únicos límites son, como siempre, aquellos de visión” - James Broughton"
    echo "----------------------------------------------------------------------------"
end
# set locale
set -x LANG en_US.UTF-8
set -x LC_ALL en_US.UTF-8
set -x LC_CTYPE en_US.UTF-8
# set default editor
set -x EDITOR nvim
# override command color
set -x fish_color_command normal
# PATH
test -d /usr/local/bin  ;and set PATH /usr/local/bin  $PATH
test -d /usr/local/sbin ;and set PATH /usr/local/sbin $PATH
# Set GO lang path
test -d $HOME/go ;and set -x GOPATH $HOME/go ;and set PATH $GOPATH/bin $PATH
test -d /usr/local/opt/go/libexec ;and set -x GOROOT /usr/local/opt/go/libexec ;and set PATH $GOROOT/bin $PATH
# set Rust lang path
test -d $HOME/.cargo/bin ;and set PATH $HOME/.cargo/bin $PATH
# set Java JDK to path
test -x /usr/libexec/java_home ;and set -x JAVA_HOME (/usr/libexec/java_home)
test -d /usr/local/share/android-sdk ;and set -x ANDROID_SDK_ROOT /usr/local/share/android-sdk
test -d /usr/local/share/android-sdk ;and set -x ANDROID_HOME /usr/local/share/android-sdk
# add rbenv to $PATH
status --is-interactive; and source (rbenv init -|psub)
# Need this to expose global packages installed via yarn
test -d $HOME/.config/yarn/global/node_modules/.bin ;and set PATH $HOME/.config/yarn/global/node_modules/.bin $PATH

#############################
##### Functions/Aliases #####
#############################

#--------------------
#====> UTILITIES
#--------------------
# clear command shortcut
function cl ; clear ; end
# Neovim quick configuration
function vconfig ; nvim ~/.config/nvim/init.vim ; end
# Tmux quick configuration
function tconfig ; nvim ~/.tmux.conf ; end
# Fish shell quick configuration
function fconfig ; nvim ~/.config/fish/config.fish ; end
# Create a new directory and enter it
function md ; mkdir -p $argv ;and cd $argv ; end
# Remove all folder contents
function rma
    set_color blue; echo ">>> Delete everything on '$PWD'? (y/N)"; set_color normal;
    read yn
    if test $yn = "y"
        cd .. ;and rm -rf dir ;and  mkdir dir ;and cd dir
    end
end
function killp
    kill (lsof -i tcp:$argv | tail -n +2 | awk '{ print $2 }')
end

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
# open neovim
function vi ; nvim $argv ; end
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
function bup ; brew update ;and brew upgrade ; end
# install formula
function bin ; brew install $argv ; end
# List installed formulae with version number(s)
function bls ; brew list --versions ; end
# List installed formulae & dependencies in a tree format
function bdeps ; brew deps --installed --tree ; end
# List outdated formulae
function bout ; brew outdated ; end
# Check if formula is a dependency of another
function buse ; brew uses --installed $argv ; end
# Clean past version(s) of formulae including cache
function bcl ; brew cleanup -s ;and brew cask cleanup ;and brew prune ; end
# uninstall formula including dependencies
function brm
    brew deps $argv | xargs brew remove --ignore-dependencies | brew remove $argv | brew missing | cut -d: -f2 | sort | uniq | xargs brew install
end

#--------------
#====> MAC
#--------------

# Open Google Chrome
function chrome ; open -a google\ chrome ; end
# Open Safari
function safari ; open -a safari ; end
# Open current folder in finder
function finder ; open -a Finder . ; end
# Open text editor
function text ; open -a TextEdit ; end
# Flush dns cache
function flush ; dscacheutil -flushcache ; end
# Remove .DS_Store files recursively
function dsclean ; find . -type f -name .DS_Store -print0 | xargs -0 rm ; end
# Show/hide 'dotfiles' system wide
function showfiles
    defaults write com.apple.finder AppleShowAllFiles -bool true ;and killall Finder
end
function hidefiles
    defaults write com.apple.finder AppleShowAllFiles -bool false ;and killall Finder
end
# Show/hide desktop icons, useful for presentations
function showicons
    defaults write com.apple.finder CreateDesktop -bool true ;and killall Finder
end
function hideicons
    defaults write com.apple.finder CreateDesktop -bool false ;and killall Finder
end

#-------------------
#====> TMUX
#-------------------
#Tmux shortcut
function t ; tmux $argv ; end
#Tmux new session
function tn ; tmux new -s $argv ; end
# Tmux list
function tl ; tmux ls ; end
# Tmux kill session
function tk ; tmux kill-session -t $argv ; end
# Tmux kill all
function tka ; tmux kill-server ; end
# Tmux attach
function ta ; tmux a -t $argv ; end
# Tmux detach
function td ; tmux detach ; end

#-------------------
#====> GIT
#-------------------
# Git status
function gs ; git status ; end
# Git log
function gl ; git log ; end
# Git add
function ga ; git add $argv ; end
# Git add all
function gaa ; git add -A . ; end
# Git Diff
function gd ; git diff --color=always ; end
# Git Branch
function gb ; git branch ; end
# Git checkout
function gco ; git checkout ; end
# Git merge
function gm ; git merge ; end
# Git tag
function gt ; git tag ; end
# Git pull
function gp ; git pull $argv ; end
# Git pull origin master
function pullom ; git pull origin master ; end
# Git commit
function gc ; git commit -m $argv ; end
# Git push
function push ; git push $argv ; end
# Git push origin master
function pushom ; git push origin master ; end

#------------------
#====> Npm / Yarn
#------------------
# Npm install global packages
function ngi ; npm install -g $argv ; end
# Npm uninstall global packages
function ngu ; npm uninstall -g $argv ; end
# Npm list global packages
function ngl ; npm -g ls --depth=0 ; end
# Npm list local packages
function nll ; npm ls --depth=0 ; end
# Npm project shortcuts
function nt ; npm test ; end
function ns ; npm start ; end
function nr ; npm run ; end
function nd ; npm run dev ; end
function nb ; npm run build ; end
function ndt ; npm run dev:test ; end
function nds ; npm run dev:ssr ; end
# Yarn install global packages
function ygi ; yarn global add $argv ; end
# Yarn uninstall global packages
function ygu ; yarn global remove $argv ; end
# Yarn list global packages
function ygi ; yarn global ls ; end
# Yarn list local packages
function ygi ; yarn list --depth=0 ; end

#------------------
#====> ELIXIR
#------------------
# Get Phoenix installed version
function phv ; mix phoenix.new -v ; end

#------------------
#====> GO LANG
#------------------
# Fast cd to $GOPATH
function cdg ; cd $GOPATH ; end

#----------------
#====> OTHER
#----------------
# Tree always with color
function tc ; tree -C ; end

