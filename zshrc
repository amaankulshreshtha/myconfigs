# uncomment for debugging
# zmodload zsh/zprof
# Fig pre block. Keep at the top of this file.
# zmodload zsh/zprof
[[ -f ~/.zsh/paths.zsh ]] && . ~/.zsh/paths.zsh
[[ -f ~/.zsh/aliases.zsh ]] && . ~/.zsh/aliases.zsh
[[ -f ~/.zsh/functions.zsh ]] && . ~/.zsh/functions.zsh
[[ -f ~/.zsh/nvm.zsh ]] && . ~/.zsh/nvm.zsh
[[ -f ~/.zsh/bun.zsh ]] && . ~/.zsh/bun.zsh
[[ -f ~/.zsh/plugins.zsh ]] && . ~/.zsh/plugins.zsh

eval "$(starship init zsh)"

# zprof
# eval "$(fig init zsh pre)"

# PROFILERS
# zmodload zsh/zprof





# FLAGS
#######################################
# for lukechilds/zsh-nvm
# export NVM_LAZY_LOAD=true
# export NVM_COMPLETION=true

# ANTIGEN
#######################################
# source $HOME/antigen.zsh
# antigen init $HOME/.antigenrc
# # run antigen cache-gen once when you first set up the terminal with antigen to generate the cache file
# # Commenting this out as antigen loads the entire oh-my-zsh library
# # antigen use oh-my-zsh

# # PLUGINS
# ########################################
# # antigen bundle lukechilds/zsh-nvm
# # antigen bundle git
# # antigen bundle z
# # antigen bundle common-aliases
# # # antigen bundle colored-man-pages
# # antigen bundle rbenv
# # antigen bundle ssh-agent
# # # antigen bundle laggardkernel/zsh-thefuck
# # antigen bundle zsh-users/zsh-syntax-highlighting
# # antigen bundle zsh-users/zsh-autosuggestions

# # # THEME ENGINE
# # ########################################
# # antigen theme spaceship-prompt/spaceship-prompt

