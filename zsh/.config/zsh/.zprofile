# History files 
export LESSHISTFILE=$HOME/.local/share/less/.lesshst

# less with mouse support in tmux
export LESS='-R --mouse'

# Locale settings irish english offers best settings
export LANG=en_IE.UTF-8
export LC_ALL=en_IE.UTF-8

#nix locale
export LOCALE_ARCHIVE=/usr/lib/locale/locale-archive

# Add yarn bin to PATH
#export PATH="$(yarn global bin --offline):$PATH"

# Use docker buildkit
export DOCKER_BUILDKIT=1

#local bin
export PATH="$HOME/samuel/.local/bin:$PATH"
# Add cargo to PATH
export PATH="$HOME/.cargo/bin:$PATH"

# minishift OC binary path
export PATH="/home/samuel/.minishift/cache/oc/v3.11.0/linux:$PATH"

export NVM_DIR="$([ -z "${XDG_CONFIG_HOME-}" ] && printf %s "${HOME}/.nvm" || printf %s "${XDG_CONFIG_HOME}/nvm")"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh" # This loads nvm
export PATH=$PATH:/usr/local/go/bin
export PATH=$PATH:/home/samuel/go/bin

export PATH=$PATH:$(go env GOPATH)/bin

## HomeBrew options
#export HOMEBREW_CASK_OPTS=--no-quarantine
#
## Homebrew sbin in path
#export PATH="/usr/local/sbin:$PATH"
#
## Add GOPATH to PATH
#export GOPATH="$HOME/.go"
#export PATH="$GOPATH/bin:$PATH"
#
## Add java to PATH
#export JAVA_HOME="/usr/local/opt/openjdk@11"
#export PATH="$JAVA_HOME/bin:$PATH"
#
## Dbus for zathura synctex
#export DBUS_SESSION_BUS_ADDRESS='unix:path='$DBUS_LAUNCHD_SESSION_BUS_SOCKET
#
#
export PATH="${KREW_ROOT:-$HOME/.krew}/bin:$PATH"
