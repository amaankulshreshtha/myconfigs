# PATHS 
########################################

export ZSH="$HOME/.oh-my-zsh"
export ZSH_THEME="$ZSH/custom/themes"
export ZSH_PLUGINS=$ZSH/custom/plugins
export DENO_INSTALL="$HOME/.local"
export DENO_PATH="$DENO_INSTALL/bin"
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion
export YARN_PATH="$HOME/.yarn/bin"
export MAMP_PHP73="/Applications/MAMP/bin/php/php7.3.24/bin"
export JAVA_HOME="/Library/Java/JavaVirtualMachines/jdk1.8.0_211.jdk/Contents/Home"
export M2_HOME="/opt/apache-maven-3.6.3/bin"
export IDEA_PATH="/opt/idea/bin"
export ANDROID_HOME=$HOME/Library/Android/sdk
export ANDROID_EMULATOR=$ANDROID_HOME/emulator
export ANDROID_TOOLS=$ANDROID_HOME/tools
export ANDROID_BIN=$ANDROID_HOME/tools/bin
export ANDROID_PLATFORM_TOOLS=$ANDROID_HOME/platform-tools

# CUSTOM JAVSCRIPT PROMPT
########################################

POWERLEVEL9K_CUSTOM_JAVASCRIPT="echo -n '\ue781' JavaScript"
POWERLEVEL9K_CUSTOM_JAVASCRIPT_FOREGROUND="black"
POWERLEVEL9K_CUSTOM_JAVASCRIPT_BACKGROUND="yellow"

# CUSTOM EMOJI PROMPT
#######################################

POWERLEVEL9K_CUSTOM_EMOJI="echo -n '\u2728'"
POWERLEVEL9K_CUSTOM_EMOJI_BACKGROUND="transparent"


# PROMPT ELEMENTS
#######################################

POWERLEVEL9K_LEFT_PROMPT_ELEMENTS=(ssh dir vcs custom_emoji)
POWERLEVEL9K_PROMPT_ADD_NEWLINE=true
POWERLEVEL9K_PROMPT_ON_NEWLINE=true
POWERLEVEL9K_DISABLE_RPROMPT=true
POWERLEVEL9K_MULTILINE_FIRST_PROMPT_PREFIX=""
POWERLEVEL9K_MULTILINE_LAST_PROMPT_PREFIX="$ "

# PLUGINS
########################################

source "$ZSH_PLUGINS/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh"
source "$ZSH_PLUGINS/zsh-autosuggestions/zsh-autosuggestions.zsh"

plugins=(git zsh-autosuggestions zsh-syntax-highlighting)

# CUSTOM FUNCTIONS
########################################

# CALL `nvm use` automatically in a directory with `.nvmrc` file
autoload -U add-zsh-hook
load-nvmrc() {
  local node_version="$(nvm version)"
  local nvmrc_path="$(nvm_find_nvmrc)"

  if [ -n "$nvmrc_path" ]; then
    local nvmrc_node_version=$(nvm version "$(cat "${nvmrc_path}")")

    if [ "$nvmrc_node_version" = "N/A" ]; then
      nvm install
    elif [ "$nvmrc_node_version" != "$node_version" ]; then
      nvm use
    fi
  elif [ "$node_version" != "$(nvm version default)" ]; then
    echo "Reverting to nvm default version"
    nvm use default
  fi
}
add-zsh-hook chpwd load-nvmrc
load-nvmrc

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

timezsh() {
  shell=${1-$SHELL}
  for i in $(seq 1 10); do /usr/bin/time $shell -i -c exit; done
}

# THEME ENGINE
########################################

POWERLEVEL9K_MODE='nerdfont-complete'
source $ZSH_THEME/Powerlevel9k/powerlevel9k.zsh-theme
ZSH_THEME="Powerlevel9k/powerlevel9k"

# ALIAS
########################################

alias ls='colorls -1'
alias lc='colorls -lA --sd'
alias cls='clear'
alias c='code'
alias cin='code-insiders'
alias ip='ifconfig | grep "inet 1"'
alias log='git log --color --oneline | emojify | less -r'
alias mas='mirror-android-screen'
alias ras='record-android-screen'
alias ez='code ~/.zshrc'
alias execz='exec zsh'
alias mage='php bin/magento'

# EXECUTIONS
########################################

source $ZSH/oh-my-zsh.sh
eval "$(rbenv init -)"
export PATH="/usr/local/sbin:$IDEA_PATH:$M2_HOME:$JAVA_HOME:$DENO_PATH:$YARN_PATH:$ANDROID_HOME:$ANDROID_EMULATOR:$ANDROID_TOOLS:$ANDROID_BIN:$ANDROID_PLATFORM_TOOLS:$MAMP_PHP73:$PATH"
