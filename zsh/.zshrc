# Fig pre block. Keep at the top of this file.
export PATH="${PATH}:${HOME}/.local/bin"
eval "$(fig init zsh pre)"

# PROFILERS
# zmodload zsh/zprof
timezsh() {
  time zsh -i -c exit
}

# COLORS
########################################
PINK="\033[1;35m"
CYAN="\033[0;36m"
NC="\033[0m" # NO COLOR

# PATHS 
########################################
export CELLAR="/usr/local/Cellar"
export ZSH="$HOME/.oh-my-zsh"
export DENO_INSTALL="$HOME/.local"
export DENO_PATH="$DENO_INSTALL/bin"
export MAMP_PHP73="/Applications/MAMP/bin/php/php7.3.24/bin"
export JAVA_HOME="/Library/Java/JavaVirtualMachines/jdk-11.0.12.jdk/Contents/Home"
export M2_HOME="/opt/apache-maven-3.6.3/bin"
export IDEA_PATH="/opt/idea/bin"
export ANDROID_HOME="$HOME/Library/Android/sdk"
export ANDROID_EMULATOR="$ANDROID_HOME/emulator"
export ANDROID_TOOLS="$ANDROID_HOME/tools"
export ANDROID_BIN="$ANDROID_HOME/tools/bin"
export ANDROID_PLATFORM_TOOLS="$ANDROID_HOME/platform-tools"
export RBENV_PATH="$HOME/.rbenv/bin"
export PYTHON_SITE_PACKAGES="$CELLAR/python@3.9/3.9.10/bin/python3.9"

# exclusively for fastlane
export LC_ALL=en_US.UTF-8
export LANG=en_US.UTF-8

# FLAGS
#######################################
# for lukechilds/zsh-nvm
# export NVM_LAZY_LOAD=true

# ANTIGEN
#######################################
source /usr/local/share/antigen/antigen.zsh
antigen use oh-my-zsh

# PLUGINS
########################################
antigen bundle lukechilds/zsh-nvm
antigen bundle git
antigen bundle z
antigen bundle common-aliases
antigen bundle colored-man-pages
antigen bundle rbenv
antigen bundle laggardkernel/zsh-thefuck
antigen bundle zsh-users/zsh-syntax-highlighting
antigen bundle zsh-users/zsh-autosuggestions

# THEME ENGINE
########################################
antigen theme spaceship-prompt/spaceship-prompt

# ALIAS
########################################
alias cls='clear'
alias c='code'
alias cin='code-insiders'
alias ip='ifconfig | grep "inet 1"'
alias mas='mirror-android-screen'
alias ras='record-android-screen'
alias eg='c ~/.gitconfig'
alias ez='c ~/.zshrc'
alias exz='exec zsh'
alias sz='source ~/.zshrc'
alias mage='php bin/magento'
alias print-path='print -l $path'
alias gpl='git pl'
alias gps='git ps'
alias gz='git cz'
alias ga='git add .'
alias gst='git st'
alias gstash='git stash'
alias gd='git diff'
alias gl='git lg --oneline'
alias gco='git co'
alias gbr='git br'
alias gcz='git cz'
alias sf='spotify'
alias sfp='spotify play'
alias sfps='spotify pause'
alias sfpr='spotify prev'
alias sfn='spotify next'
alias sft='spotify toggle'



# CUSTOM FUNCTIONS
########################################
mkcd() {
  mkdir -p -- "$1" &&
  cd -P -- "$1"
}

nvmi() {
	nvm install "$1" --reinstall-packages-from=node --latest-npm
}

ytdl() {
  youtube-dl -x --audio-format 'mp3' --embed-thumbnail "$1"
}

mirror-android-screen() {
  scrcpy -m 1024
}

record-android-screen() {
  scrcpy -r "$1"
}

restart-sound() {
  sudo launchctl stop com.apple.audio.coreaudiod && sudo launchctl start com.apple.audio.coreaudiod
}

prettify-path() {
  tr ':' '\n' <<< "$PATH"
}

check-rbenv-update() {
  RBENV_GIT="$HOME/.rbenv/.git"
  OUT="$(git --git-dir=$RBENV_GIT diff master origin/master)"
  
  if [ -n "$OUT" ]; then
    git --git-dir=$RBENV_GIT pull
  fi
}

show-all-folders() {
  defaults write com.apple.finder AppleShowAllFiles TRUE
  killall Finder
}

hide-all-folders() {
  defaults write com.apple.finder AppleShowAllFiles FALSE
  killall Finder
}

convMov2Gif() {
  ffmpeg -i "$1" -pix_fmt rgb8 -r 10 "$2" && gifsicle -O3 "$2" -o "$2"
}

force-open() {
  xattr -d com.apple.quarantine "$1"
}

# switch between release and beta xcodes
xcswitch() {
    RELEASE="Xcode.app"
    BETA="Xcode-beta.app"

    CURRENT=$(xcode-select -p)
    NEXT=""

    if [[ "$CURRENT" =~ "$RELEASE" ]]
    then
        NEXT="$BETA"
    else
        NEXT="$RELEASE"
    fi

    sudo xcode-select -s "/Applications/$NEXT"
    echo "Switched to $NEXT"
}

export PATH="/usr/local/sbin:$PYTHON_SITE_PACKAGES:$IDEA_PATH:$RBENV_PATH:$M2_HOME:$JAVA_HOME:$DENO_PATH:$ANDROID_HOME:$ANDROID_EMULATOR:$ANDROID_TOOLS:$ANDROID_BIN:$ANDROID_PLATFORM_TOOLS:$MAMP_PHP73:$NVM_DIR:$PATH"
antigen apply



# figlet -kc -w 150 -f big "WELCOME TO THE PLAYGROUND" | lolcat -p 16.6 -S 10 -a -s 300 -d 4

# Fig post block. Keep at the bottom of this file.
eval "$(fig init zsh post)"

