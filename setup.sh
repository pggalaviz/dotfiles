#!/bin/sh

echo "---------------------------------------------------------"
echo "INITIALIZING..."
echo "---------------------------------------------------------"
#--------------------------------------
# Install brew if not on current system
#--------------------------------------
brew="/usr/local/bin/brew"
if [ -f "$brew" ]
then
  echo "Homebrew is installed, nothing to do here..."
  echo "---------------------------------------------------------"
else
  echo "Homebrew is not installed, installing now... it may take some time..."
  echo "Homebrew requires OSX command line tools, you'll need XCode!"
  ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
  echo "---------------------------------------------------------"
fi

#-----------------------------------------
# Install some basic packages/dependencies
#-----------------------------------------
packages=(
"git"
"node"
"fish"
"hyper"
"neovim/neovim/neovim"
"go"
"rbenv"
"ruby-build"
"tmux"
"yarn"
"python3"
"tree"
"the_silver_searcher"
"reattach-to-user-namespace"
)
echo "Installing basic dependencies & packages with Homebrew, this may take a while... \n"
for i in "${packages[@]}"
do
  brew install $i
  echo "---------------------------------------------------------"
done
# Universal ctags is not currently on Homebrew repo, need to tap.
brew tap universal-ctags/universal-ctags
brew install --HEAD universal-ctags
echo "---------------------------------------------------------"
brew upgrade
brew cleanup -s

#----------------------
# Check for a local GIT
#----------------------
localGit="/usr/local/bin/git"
if [ -f "$localGit" ]
then
  echo "GIT is correclty installed..."
else
  echo "UPS!"
  echo "Can't find a GIT installation! Please install it then you can rerun this script."
  exit 2
fi
echo "---------------------------------------------------------"

# ------------------------------------------
# Change to the fish shell (optional to zsh)
# ------------------------------------------
echo "Changing to fish shell... Might require password.\n"
chsh -s $(which fish)
echo "\nRestart your terminal so any changes take effect."
echo "---------------------------------------------------------"

#---------------------------
# Symlink fish configuration
#---------------------------
echo "Symlinking fish shell configuration..."
mkdir -p ~/.config/fish
mkdir -p ~/.config/fish/functions
ln -sf `pwd`/fish/config.fish ~/.config/fish/
ln -sf `pwd`/fish/functions/fish_prompt.fish ~/.config/fish/functions/
echo "---------------------------------------------------------"

#-------------------------------
# Symlink Hyper.js configuration
#-------------------------------
echo "Symlinking Hyper.js configuration..."
ln -sf `pwd`/hyper/hyper.js ~/.hyper.js
echo "---------------------------------------------------------"

#--------------------------------
# Symlink Alacritty configuration
#--------------------------------
echo "Symlinking Alacritty configuration..."
mkdir -p ~/.config/alacritty
ln -sf `pwd`/alacritty/alacritty.yml ~/.config/alacritty/
ln -sf `pwd`/alacritty/alacritty_macos.yml ~/.config/alacritty/
echo "---------------------------------------------------------"

#-------------------------------------------
# Create Golang path folders if not existent 
#-------------------------------------------
echo "Creating Golang path folders if not existent..."
mkdir -p ~/go
mkdir -p ~/go/bin
echo "---------------------------------------------------------"

#---------------------------------------------------
# Downloading Golang utilities, tools & dependencies 
#---------------------------------------------------
echo "Downloading Golang utilities, tools & dependencies..."
go get -u github.com/nsf/gocode
echo "---------------------------------------------------------"

#-----------------------------
# Symlink Neovim configuration
#-----------------------------
echo "Symlinking Neovim configuration..."
mkdir -p ~/.config/nvim
ln -sf `pwd`/nvim/init.vim ~/.config/nvim/
ln -sf `pwd`/nvim/plugins.vim ~/.config/nvim/
ln -sf `pwd`/nvim/functions.vim ~/.config/nvim/
ln -sf `pwd`/nvim/autocmds.vim ~/.config/nvim/
ln -sf `pwd`/nvim/keybindings.vim ~/.config/nvim/
ln -sf `pwd`/nvim/settings.vim ~/.config/nvim/
ln -sf `pwd`/nvim/editorconfig ~/.editorconfig
echo "---------------------------------------------------------"

#-------------------------------------
# Install/Upgrade Neovim python client 
#-------------------------------------
echo "Downloading Neovim python 3 client... \n"
pip3 install --upgrade neovim
echo "---------------------------------------------------------"

#---------------------------------------------
# Download Vim-plug manager to use with Neovim
#---------------------------------------------
echo "Downloading Vim-plug to use with Neovim... \n"
curl -fLo ~/.config/nvim/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
echo "---------------------------------------------------------"

#---------------------------
# Symlink Tmux configuration
#---------------------------
echo "Symlinking Tmux configuration..."
mkdir -p ~/.tmux
ln -sf `pwd`/tmux/tmux.conf ~/.tmux.conf
ln -sf `pwd`/tmux/tmux-status.conf ~/.tmux/
echo "---------------------------------------------------------"

#--------------------------------------------------------
# Check if Tmux plugin manager already exists or clone it 
#--------------------------------------------------------
tmuxPlugin="$HOME/.tmux/plugins/tpm"
if [ -d "$tmuxPlugin" ]
then
  echo "Tmux Plugin Manager already installed..."
else
  echo "Cloning Tmux Plugin Manager..."
  git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm
fi
echo "---------------------------------------------------------"

echo "All done here..."
echo "Time for some manual stuff, sorry!\n"
echo "=> Neovim"
echo "To install the nvim plugins, open up nvim and type ':PlugInstall'\n"
echo "=> Tmux"
echo "To install tmux plugins type 'prefix' + 'I', or 'prefix' + 'U' to update them.\n"
echo "=> git"
echo "Setup your git config:\ngit config --global user.email "pggalaviz@gmail.com"\ngit config --global user.name "PGGalaviz"\n"
echo "That's it!"
echo "bye..."

exit 0

