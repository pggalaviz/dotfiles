#!/bin/sh

# Import helper scripts --------------------------------------------------------
# ------------------------------------------------------------------------------
source 'scripts/helpers/colors.sh'
source 'scripts/helpers/functions.sh'

# MacOS or Linux specific configuration ----------------------------------------
# ------------------------------------------------------------------------------
if system_is_OSX; then
  source 'scripts/osx.sh'
elif system_is_linux; then
  source 'scripts/linux.sh'
fi

exit 0
