# PATHS 
########################################

# Osx
export USER_LOCAL_BIN="/usr/local/bin"
export USER_LOCAL_SBIN="/usr/local/sbin"
export HOMEBREW_M1_BIN="/opt/homebrew/bin"
export HOMEBREW_M1_LIB="/opt/homebrew/lib"
export HOME_BIN="${HOME}/.local/bin"
export CELLAR="/usr/local/Cellar"

# ZSH
export ZSH="$HOME/.oh-my-zsh"

# Java
export JAVA_HOME="/Library/Java/JavaVirtualMachines/jdk-11.jdk/Contents/Home"

# Android
export ANDROID_HOME="$HOME/Library/Android/sdk"
export ANDROID_EMULATOR="$ANDROID_HOME/emulator"
export ANDROID_TOOLS="$ANDROID_HOME/cmdline-tools/latest"
export ANDROID_BIN="$ANDROID_TOOLS/bin"
export ANDROID_PLATFORM_TOOLS="$ANDROID_HOME/platform-tools"

# Ruby
export RBENV_PATH="$HOME/.rbenv/bin"

# JS/TS
export BUN_INSTALL="$HOME/.bun"
export PATH="$BUN_INSTALL/bin:$PATH"
export NVM_DIR="$HOME/.nvm"
export DENO_INSTALL="$HOME/.local"
export DENO_PATH="$DENO_INSTALL/bin"

# Misc
export IDEA_PATH="/opt/idea/bin"
export NI_CONFIG_FILE="$HOME/.nirc"


# exclusively for fastlane
export LC_ALL=en_US.UTF-8
export LANG=en_US.UTF-8


export PATH="\
$USER_LOCAL_BIN:\
$HOME_BIN:\
$USER_LOCAL_SBIN:\
$HOMEBREW_M1_BIN:\
$HOMEBREW_M1_LIB:\
$ANDROID_HOME:\
$ANDROID_EMULATOR:\
$ANDROID_TOOLS:\
$ANDROID_BIN:\
$ANDROID_PLATFORM_TOOLS:\
$RBENV_PATH:\
$BUN_INSTALL:\
$NVM_DIR:\
$JAVA_HOME:\
$DENO_PATH:\
$IDEA_PATH:\
$NI_CONFIG_FILE:\
$PATH"
