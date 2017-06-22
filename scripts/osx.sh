#!/bin/sh
# OSX.sh

echo "--------------------------------------------------------------------------"
echo "INITIALIZING OSX CONFIGURATION..."
echo "--------------------------------------------------------------------------"

# Install Homebrew if not on current system ------------------------------------
# ------------------------------------------------------------------------------
if exists "brew"; then
  echo_item "Homebrew is already installed." green
else
  echo_item "Homebrew is not installed and is required for configuration!" yellow
  if get_boolean_response "Do you want to install Homebrew?"; then
    echo_item "Installing Homebrew, this can take some time..." yellow
    ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
    echo_item "Done!" green
  else
    echo_item "Skipping Homebrew installation..." red
    echo_item "Homebrew is required, consider installing it to complete configuration."
    echo "--------------------------------------------------------------------------"
    exit 2
  fi
fi
echo "--------------------------------------------------------------------------"



# Install Git ------------------------------------------------------------------
# ------------------------------------------------------------------------------
if exists "git"; then
  echo_item "Git is correctly installed." green
else
  echo_item "Git is not installed and is required for configuration!" yellow
  if get_boolean_response "Do you want to install Git?"; then
    echo_item "Installing Git..." yellow
    brew install git
    echo_item "Done!" green
  else
    echo_item "Skipping Git installation..." red
    echo_item "Git is required, consider installing it to complete configuration."
    echo "--------------------------------------------------------------------------"
    exit 2
  fi
fi
echo "--------------------------------------------------------------------------"



# Install Node -----------------------------------------------------------------
# ------------------------------------------------------------------------------
if exists "node"; then
  echo_item "Node.js is correctly installed." green
else
  echo_item "Node.js is not installed and is required for some tools to work." yellow
  if get_boolean_response "Do you want to install Node?"; then
    echo_item "Installing Node..." yellow
    brew install node
    brew install yarn
    # Centralize global npm packages for different node versions
    echo "prefix = /usr/local" > ~/.npmrc
    echo_item "Done!" green
  else
    echo_item "Skipping Node.js installation..." red
    echo_item "Node is a very useful tool, you'll probably need it."
  fi
fi
echo "--------------------------------------------------------------------------"



# Install Utilities ------------------------------------------------------------
# ------------------------------------------------------------------------------
taps=(
"burntsushi/ripgrep https://github.com/BurntSushi/ripgrep.git"
"caskroom/cask"
)
packages=(
"python3"
"tree"
"reattach-to-user-namespace"
"burntsushi/ripgrep/ripgrep-bin"
)
echo_item "Brew tapping & installing some utilities..." yellow
for i in "${taps[@]}"
do
  brew tap $i
done
for i in "${packages[@]}"
do
  brew install $i
  echo "--------"
done
echo_item "Done!" green
echo "--------------------------------------------------------------------------"



# Install Fish Shell -----------------------------------------------------------
# ------------------------------------------------------------------------------
echo_item "Fish shell:" blue
if get_boolean_response "Do you want to install and use Fish shell?"; then
  echo_item "Installing Fish shell..." yellow
  brew install fish
  echo_item "Changing to Fish shell... Might require password:" yellow
  chsh -s $(which fish)
  echo_item "Fish shell successfully installed!" green
  echo "--------------------------------------------------------------------------"
  echo_item "Symlinking Fish shell configuration..." yellow
  mkdir -p ~/.config/fish
  mkdir -p ~/.config/fish/functions
  ln -sf `pwd`/fish/config.fish ~/.config/fish/
  ln -sf `pwd`/fish/functions/fish_prompt.fish ~/.config/fish/functions/
  echo_item "Done!" green
  echo "********************************************************************"
  echo_item "Please restart your terminal and rerun this script to continue." blue
  echo "********************************************************************"
  echo_item "You can skip this step next time."
  exit 0
else
  if exists "fish"; then
    echo_item "Fish is already installed!" green
  else
    echo_item "Using default shell..." red
    echo_item "These files work better with Fish, you'll need to manually customize any other shell."
  fi
fi
echo "--------------------------------------------------------------------------"



# Install Hyper.js -------------------------------------------------------------
# ------------------------------------------------------------------------------
echo_item "Hyper.js terminal:" blue
if get_boolean_response "Do you want to install Hyper.js Terminal?"; then
  echo_item "Installing Hyper.js..." yellow
  brew install hyper
  echo_item "Hyper.js successfully installed!" green
  echo "--------------------------------------------------------------------------"
  echo_item "Symlinking Hyper.js configuration..." yellow
  ln -sf `pwd`/hyper/hyper.js ~/.hyper.js
  echo_item "Done!" green
else
  echo_item "Skipping Hyper.js installation..." red
  echo_item "You'll need a true color terminal emulator like iTerm2 or Hyper.js"
fi
echo "--------------------------------------------------------------------------"



# Install rbenv ----------------------------------------------------------------
# ------------------------------------------------------------------------------
echo_item "rbenv (Manage Ruby versions):" blue
if get_boolean_response "Do you want to install rbenv?"; then
  echo_item "Installing rbenv..." yellow
  brew install rbenv
  brew install ruby-build
  rbenv rehash
  echo_item "rbenv successfully installed!" green
else
  echo_item "Skipping rbenv installation..."
fi
echo "--------------------------------------------------------------------------"



# Install Tmux -----------------------------------------------------------------
# ------------------------------------------------------------------------------
echo_item "Tmux:" blue
if get_boolean_response "Do you want to install Tmux?"; then
  echo_item "Installing Tmux..." yellow
  brew install tmux
  echo_item "Tmux successfully installed!" green
  echo "--------------------------------------------------------------------------"
  echo_item "Symlinking Tmux configuration..." yellow
  mkdir -p ~/.tmux
  ln -sf `pwd`/tmux/tmux.conf ~/.tmux.conf
  ln -sf `pwd`/tmux/tmux-status.conf ~/.tmux/
  echo_item "Done!" green
  echo "--------------------------------------------------------------------------"
  tmuxPlugin="$HOME/.tmux/plugins/tpm"
  if [ -d "$tmuxPlugin" ]
  then
    echo_item "Tmux Plugin Manager already installed!" green
  else
    echo_item "Cloning Tmux Plugin Manager..." yellow
    git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm
    echo_item "Done!" green
  fi
else
  echo_item "Skipping Tmux installation..." red
  echo_item "Tmux is a very helpful tool, better when working with Vim or Neovim."
fi
echo "--------------------------------------------------------------------------"



# Install Neovim ---------------------------------------------------------------
# ------------------------------------------------------------------------------
echo_item "Neovim:" blue
if get_boolean_response "Do you want to install Neovim?"; then
  echo_item "Brew tapping Neovim..." yellow
  brew tap neovim/neovim
  echo_item "Installing Neovim..." yellow
  brew install neovim
  echo_item "Neovim successfully installed!" green
  echo "--------------------------------------------------------------------------"
  echo_item "Symlinking Neovim configuration..." yellow
  mkdir -p ~/.config/nvim
  mkdir -p ~/.config/nvim/plugin
  ln -sf `pwd`/nvim/init.vim ~/.config/nvim/
  ln -sf `pwd`/nvim/plugins.vim ~/.config/nvim/
  ln -sf `pwd`/nvim/functions.vim ~/.config/nvim/
  ln -sf `pwd`/nvim/autocmds.vim ~/.config/nvim/
  ln -sf `pwd`/nvim/keybindings.vim ~/.config/nvim/
  ln -sf `pwd`/nvim/settings.vim ~/.config/nvim/
  ln -sf `pwd`/nvim/editorconfig ~/.editorconfig
  ln -sf `pwd`/nvim/plugin/*.vim ~/.config/nvim/plugin/
  echo_item "Done!" green
  echo "--------------------------------------------------------------------------"
  echo_item "Downloading Neovim python 3 client..." yellow
  pip3 install --upgrade neovim
  echo_item "Done!" green
  echo "--------------------------------------------------------------------------"
  echo_item "Downloading Neovim ruby client..." yellow
  gem install neovim
  echo_item "Done!" green
  echo "--------------------------------------------------------------------------"
  echo_item "Downloading Neovim plugin manager (vim-plug)..." yellow
  curl -fLo ~/.config/nvim/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  echo_item "Done!" green
  echo "--------------------------------------------------------------------------"
  echo_item "Neovim plugins:" yellow
  if  get_boolean_response "Install Neovim plugins?"; then
    echo_item "Installing Neovim plugins..." yellow
    nvim +PlugInstall +qa
    echo_item "Done!" green
  else
    echo_item "Skipping plugins installation..." red
    echo_item "To install plugins you must run ':PlugInstall' inside Neovim."
  fi
else
  echo_item "Skipping Neovim installation..." red
  echo_item "Neovim will drastically increment your productivity."
fi
echo "--------------------------------------------------------------------------"



# Install Node Global Packages -------------------------------------------------
# ------------------------------------------------------------------------------
modules=(
"vue-cli"
"tern"
)
echo_item "Node Global Packages:" blue
echo_item "Packages:"
echo "- vue-cli"
echo "- tern (required for Neovim JS linting)\n"
if get_boolean_response "Do you want to install these global packages?"; then
  if get_boolean_response "Do you want to use yarn?"; then
    echo_item "Installing packages with yarn..." yellow
    for i in "${modules[@]}"
    do
      echo_item "${i}" yellow
      yarn global add $i
      echo "--------"
    done
  else
    echo_item "Installing packages with NPM..." yellow
    for i in "${modules[@]}"
    do
      echo_item "${i}" yellow
      npm install -g $i
      echo "--------"
    done
  fi
  echo_item "Done!" green
else
  echo_item "Skipping global packages..." red
  echo_item "Some packages are required by other tools to work properly."
fi
echo "--------------------------------------------------------------------------"



# Install Golang ---------------------------------------------------------------
# ------------------------------------------------------------------------------
echo_item "Golang:" blue
if get_boolean_response "Do you want to install the Go programming language?"; then
  echo_item "Installing Golang..." yellow
  brew install go
  echo_item "Golang successfully installed!" green
  echo "--------------------------------------------------------------------------"
  echo_item "Creating Golang path folders if not existent..." yellow
  mkdir -p ~/go
  mkdir -p ~/go/bin
  mkdir -p ~/go/src
  mkdir -p ~/go/pkg
  echo_item "Done!" green
  echo "--------------------------------------------------------------------------"
  echo_item "Downloading Golang utilities, tools & dependencies..." yellow
  go get -u github.com/nsf/gocode
  echo_item "Done!" green
else
  echo_item "Skipping Golang installation..."
fi
echo "--------------------------------------------------------------------------"



# Install Elixir ---------------------------------------------------------------
# ------------------------------------------------------------------------------
echo_item "Elixir:" blue
if get_boolean_response "Do you want to install the Elixir programming language?"; then
  echo_item "Installing Elixir..." yellow
  brew install elixir
  echo_item "Elixir successfully installed!" green
  echo "--------------------------------------------------------------------------"
else
  echo_item "Skipping Elixir installation..."
fi
echo "--------------------------------------------------------------------------"



# Install Ctags ----------------------------------------------------------------
# ------------------------------------------------------------------------------
echo_item "Ctags:" blue
if get_boolean_response "Do you want to install Ctags?"; then
  echo_item "Brew tapping Universal Ctags..." yellow
  brew tap universal-ctags/universal-ctags
  echo_item "Installing Universal Ctags..." yellow
  brew install --HEAD universal-ctags
  echo_item "Done!" green
  echo "--------------------------------------------------------------------------"
  echo_item "Symlinking custom Ctags..." yellow
  ln -sf `pwd`/ctags ~/.ctags
  echo_item "Done!" green
else
  echo_item "Skipping Ctags installation..." red
  echo_item "Ctags are very helpful to navigate inside projects."
fi
echo "--------------------------------------------------------------------------"



echo_item "All done here!" blue
echo_item "Time for some manual stuff, sorry!\n" yellow
echo_item "Tmux"
echo "To install tmux plugins, open tmux, type prefix (<Ctrl> + <space>) + 'I', or 'prefix' + 'U' to update them.\n"
echo_item "Git"
echo "Setup your git config:\ngit config --global user.email "pggalaviz@gmail.com"\ngit config --global user.name "PGGalaviz"\n"
echo_item "That's it!" blue
echo_item "bye..." blue

exit 0






