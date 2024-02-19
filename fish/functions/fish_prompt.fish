function _git_branch_name
  echo (command git symbolic-ref HEAD 2>/dev/null | sed -e 's|^refs/heads/||')
end

function _git_status_symbol
  set -l git_status (git status --porcelain 2>/dev/null)
  if test -n "$git_status"
    if git status --porcelain 2>/dev/null | grep '^.[^ ]' >/dev/null
      echo '*' # dirty
    else
      echo '#' # all staged
    end
  else
    echo   '' # clean
  end
end

function _remote_hostname
  echo (whoami)
  if test -n "$SSH_CONNECTION"
    echo " (ssh)"
  end
end

function _get_tmux_window
  tmux lsw | grep active | sed 's/\*.*$//g;s/: / /1' | awk '{ print $2 "-" $1 }' -
end

function _get_screen_window
  set initial (screen -Q windows; screen -Q echo "")
  set middle (echo $initial | sed 's/  /\n/g' | grep '\*' | sed 's/\*\$ / /g')
  echo $middle | awk '{ print $2 "-" $1 }' -
end

function _is_multiplexed
  set multiplexer ""
  if test -z $TMUX
  else
    set multiplexer "tmux"
  end
  if test -z $WINDOW
  else
    set multiplexer "screen"
  end
  echo $multiplexer
end

function fish_prompt
  set -l cyan (set_color cyan)
  set -l yellow (set_color yellow)
  set -l blue (set_color blue)
  set -l normal (set_color normal)
  set -l red (set_color red)
  set -l upper_line_color (set_color 4F5B66)

  set -l arrow "»"
  set -l cwd (set_color $fish_color_cwd)(prompt_pwd)
  set -l git_status (_git_branch_name)$red(_git_status_symbol)

  if test -n "$git_status"
    set git_status " $git_status"
  end

  set multiplexer (_is_multiplexed)

  switch $multiplexer
    case screen
      set pane (_get_screen_window)
    case tmux
      set pane (_get_tmux_window)
   end

  if test -z $pane
    set window ""
  else
    set window " ($pane)"
  end
  echo -n -s $upper_line_color ------------------------------------------ \n
  echo -n -s $normal (_remote_hostname) ' ' $cwd $yellow $window $cyan $git_status $blue ' ' $arrow ' '
end
