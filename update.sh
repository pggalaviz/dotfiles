#!/bin/sh

# Import helper scripts --------------------------------------------------------
# ------------------------------------------------------------------------------
source 'scripts/helpers/colors.sh'
source 'scripts/helpers/functions.sh'

# MacOS or Linux specific configuration ----------------------------------------
# ------------------------------------------------------------------------------
echo_item "IMPORTANT:" red
if get_boolean_response "Running this command assumes you've previoulsy run the 'install.sh' command at some point. Is this correct?"; then

  # ------------------------
  # OSX
  # ------------------------
  if system_is_OSX; then

    echo "--------------------------------------------------------------------------"
    echo "INITIALIZING OSX DOTFILES UPDATE..."
    echo "--------------------------------------------------------------------------"

    if get_boolean_response "> Update all Homebrew formulae, Node global packages & dependencies?"; then

      echo "--------------------------------------------------------------------------"
      echo_item "Updating Homebrew and formulae..." yellow
      brew update
      brew upgrade
      echo_item "Done!" green
      echo "--------------------------------------------------------------------------"

      echo_item "Cleaning old formulae versions and cache..." yellow
      brew cleanup -s
      echo_item "Done!" green
      echo "--------------------------------------------------------------------------"

      echo_item "Updating Node Package Manager..." yellow
      npm i -g npm
      echo_item "Updating Node global packages..." yellow
      npm update -g
      yarn global upgrade
      echo_item "Done!" green
      echo "--------------------------------------------------------------------------"

      echo_item "Updating dependencies..." yellow
      # Golang utilities
      if exists "go"; then
        go get -u github.com/nsf/gocode
      fi
      # Rust utilities
      if exists "rustup"; then
        rustup update
        # cargo install racer --force
      fi
      # Neovim dependencies
      if exists "nvim"; then
        # Neovim python 3 client
        if exists "pip3"; then
          pip3 install --upgrade pynvim
        fi
        # neovim ruby gem
        gem update neovim
        # neovim node
        npm install -g neovim
        # vim-plug
        curl -fLo ~/.config/nvim/autoload/plug.vim --create-dirs \
          https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
        nvim +PlugUpgrade +PlugInstall +PlugUpdate +PlugClean! +qa
        # Check for new plugin config files
        ln -sf `pwd`/nvim/plugin/*.vim ~/.config/nvim/plugin/
      fi
      # Language Servers
      mkdir -p ~/.lsp
      # Elixir
      if exists "mix"; then
        rm -rf ~/.lsp/elixir
        git clone https://github.com/elixir-lsp/elixir-ls.git ~/.lsp/elixir
        cd ~/.lsp/elixir
        mix deps.get && mix compile
        MIX_ENV=prod mix elixir_ls.release
        cd
      fi
      if exists "solargraph"; then
        gem update solargraph
      fi
      echo_item "Done!" green
      echo "--------------------------------------------------------------------------"
      echo_item "Updated selection successfully!" green
      if exists "tmux"; then
        echo_item "You'll still need to update Tmux's plugins manually."
      fi

    elif get_boolean_response "> Update only Homebrew formulae?"; then

      echo "--------------------------------------------------------------------------"
      echo_item "Updating Homebrew and formulae..." yellow
      brew update
      brew upgrade
      echo_item "Done!" green
      echo "--------------------------------------------------------------------------"

      echo_item "Cleaning old formulae versions and cache..." yellow
      brew cleanup -s
      echo_item "Done!" green
      echo "--------------------------------------------------------------------------"
      echo_item "Updated selection successfully!" green

    elif get_boolean_response "> Update only Node global packages?"; then

      echo "--------------------------------------------------------------------------"
      echo_item "Updating Node Package Manager..." yellow
      npm i -g npm
      echo_item "Updating Node global packages..." yellow
      npm update -g
      yarn global upgrade
      echo_item "Done!" green
      echo "--------------------------------------------------------------------------"
      echo_item "Updated selection successfully!" green

    elif get_boolean_response "> Update only Language Servers (elixir, ruby)?"; then

      echo "--------------------------------------------------------------------------"
      mkdir -p ~/.lsp
      if exists "mix"; then
        echo_item "Updating Elixir Language Server..." yellow
        rm -rf ~/.lsp/elixir
        git clone https://github.com/elixir-lsp/elixir-ls.git ~/.lsp/elixir
        mkdir -p ~/.lsp/elixir/rel
        cd ~/.lsp/elixir
        mix deps.get && mix compile
        MIX_ENV=prod mix elixir_ls.release -o rel
        cd
      fi
      if exists "solargraph"; then
        echo_item "Updating Ruby Language Server..." yellow
        gem update solargraph
      fi
      echo_item "Done!" green
      echo "--------------------------------------------------------------------------"
      echo_item "Updated selection successfully!" green

    elif get_boolean_response "> Update only dependencies of installed programs & tools?"; then

      echo "--------------------------------------------------------------------------"
      echo_item "Updating dependencies..." yellow
      # Golang utilities
      if exists "go"; then
        go get -u github.com/nsf/gocode
      fi
      # Rust utilities
      if exists "rustup"; then
        rustup update
        # cargo install racer --force
      fi
      # Neovim dependencies
      if exists "nvim"; then
        # Neovim python 3 client
        if exists "pip3"; then
          pip3 install --upgrade pynvim
        fi
        # neovim ruby gem
        gem update neovim
        # neovim node
        npm install -g neovim
        # vim-plug
        curl -fLo ~/.config/nvim/autoload/plug.vim --create-dirs \
          https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
        nvim +PlugUpgrade +PlugInstall +PlugUpdate +UpdateRemotePlugins +PlugClean! +qa
        # Check for new plugin config files
        ln -sf `pwd`/nvim/plugin/*.vim ~/.config/nvim/plugin/
      fi
      echo_item "Done!" green
      echo "--------------------------------------------------------------------------"
      echo_item "Updated selection successfully!" green
      if exists "tmux"; then
        echo_item "You'll still need to update Tmux's plugins manually."
        echo "To update tmux plugins, open tmux, type prefix (<Ctrl> + <space>) + 'U'\n"
      fi

    fi
    echo_item "bye..." blue

  # ------------------------
  # LINUX
  # ------------------------
  elif system_is_linux; then
    echo_item "Linux configuration is not implemented yet." red
    exit 1
  fi
else
  echo_item "You should first run the 'install.sh' command." red
  exit 1
fi
exit 0
