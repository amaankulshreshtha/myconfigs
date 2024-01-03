# Dev
alias c='code'

# Android
alias mas='mirror_android_screen'
alias ras='record_android_screen'
alias ads='android_device_serial'
alias logcat='logcat-color'

# Npm
alias ni='npm i'
alias nid='npm i -D'
alias ns='npm start'
alias nt='npm test'
alias nr='npm run'
alias nra='npm run android'
alias nrb='npm run build'
alias nrc='npm run clean'
alias nrd='npm run dev'
alias nrdp='npm run deploy'
alias nri='npm run ios'
alias nrl='npm run lint'
alias nrs='npm run serve'

# Python
alias py='python3'
alias pip='pip3'


# Shell
alias ez='c ~/.zshrc'
alias exz='exec zsh'
alias sz='source ~/.zshrc'

# Git
alias ga='git add'
alias gcm='git commit -m'
alias gz='git cz'
alias gpl='git pull'
alias gpsu='git push -u origin $(gccb | pbpaste)'
alias gps='git push'
alias gst='git status'
alias gstsh='git stash'
alias gstshl='git stash list'
alias gstshs='git stash save'
alias gstsha='git_stash_apply'
alias gstshd='git_stash_drop'
alias gstn='get_stash_name'
alias gd='git diff'
alias gl='git log --oneline'
alias gsw='git switch'
alias gco='git checkout'
alias gbr='git br'
alias gccb='git rev-parse --abbrev-ref HEAD | pbcopy'
alias eg='c ~/.gitconfig'

# System
alias cls='clear'
alias ip='ifconfig | grep "inet 1"'
alias fo='force_open'
alias fc='force_close'
alias ls="lsd"
alias l='ls -l'
alias la='ls -a'
alias lla='ls -la'
alias lt='ls --tree'
alias lp='print -l $path'
alias uz='unzip_file'
alias ssha='ssh_add'


# Commented
# alias cin='code-insiders'
# alias mage='php bin/magento'
# alias sf='spotify'
# alias sfp='spotify play'
# alias sfps='spotify pause'
# alias sfpr='spotify prev'
# alias sfn='spotify next'
# alias sft='spotify toggle'