# PATHS
########################################

# Osx
export USER_LOCAL_BIN="/usr/local/bin"
export USER_LOCAL_SBIN="/usr/local/sbin"
export HOMEBREW_M1_BIN="/opt/homebrew/bin"
export HOMEBREW_M1_LIB="/opt/homebrew/lib"
export HOME_BIN="${HOME}/.local/bin"
export CELLAR="/usr/local/Cellar"
export INSTALL_LOG_PATH="$HOME/.config/homebrew/installs.txt"
export DOWNLOADS="$HOME/Downloads"
export DESKTOP="$HOME/Desktop"
export DOCUMENTS="$HOME/Documents"

# ZSH
export ZSH_CONFIG="$XDG_CONFIG_HOME/zsh"

# Java
export JAVA_11_HOME=/Library/Java/JavaVirtualMachines/jdk-11.jdk/Contents/Home
export JAVA_17_HOME=/Library/Java/JavaVirtualMachines/zulu-17.jdk/Contents/Home

export JAVA_HOME=$JAVA_17_HOME

# Android
export ANDROID_HOME=$HOME/Library/Android/sdk
export ANDROID_SDK_ROOT=$HOME/Library/Android/sdk
export ANDROID_CMDLINE_TOOLS=$ANDROID_HOME/cmdline-tools/latest/bin
export ANDROID_PLATFORM_TOOLS=$ANDROID_HOME/platform-tools

# Ruby
export RBENV_PATH="$HOME/.rbenv/bin"

# JS/TS
export BUN_INSTALL="$HOME/.bun"
export PATH="$BUN_INSTALL/bin:$PATH"
export FNM_PATH="$XDG_DATA_HOME/fnm"
export DENO_INSTALL="$HOME/.local"
export DENO_PATH="$DENO_INSTALL/bin"

# Misc
export IDEA_PATH="/opt/idea/bin"
export NI_CONFIG_FILE="$HOME/.nirc"

# exclusively for fastlane
export LC_ALL=en_US.UTF-8
export LANG=en_US.UTF-8

# pnpm
export PNPM_HOME="/Users/amaan.kulshreshtha/Library/pnpm"

export PATH="\
$USER_LOCAL_BIN:\
$HOME_BIN:\
$USER_LOCAL_SBIN:\
$HOMEBREW_M1_BIN:\
$HOMEBREW_M1_LIB:\
$DOWNLOADS:\
$DESKTOP:\
$DOCUMENTS:\
$JAVA_HOME:\
$ANDROID_CMDLINE_TOOLS:\
$ANDROID_PLATFORM_TOOLS:\
$RBENV_PATH:\
$BUN_INSTALL:\
$FNM_PATH:\
$DENO_PATH:\
$IDEA_PATH:\
$NI_CONFIG_FILE:\
$PNPM_HOME:\
$PATH"
