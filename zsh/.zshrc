# # Amazon Q pre block. Keep at the top of this file.
[[ -f "${HOME}/Library/Application Support/amazon-q/shell/zshrc.pre.zsh" ]] && builtin source "${HOME}/Library/Application Support/amazon-q/shell/zshrc.pre.zsh"
# # uncomment for debugging
# # zmodload zsh/zprof
# # Fig pre block. Keep at the top of this file.
# # zmodload zsh/zprof

# Source all zsh config files
for config_file in $ZDOTDIR/{paths,aliases,functions,runtimes/{bun,fnm},plugins}.zsh; do
  [[ -f $config_file ]] && source $config_file
done

eval "$(starship init zsh)"

# # zprof
# # eval "$(fig init zsh pre)"

# # PROFILERS
# # zmodload zsh/zprof

# # Amazon Q post block. Keep at the bottom of this file.
[[ -f "${HOME}/Library/Application Support/amazon-q/shell/zshrc.post.zsh" ]] && builtin source "${HOME}/Library/Application Support/amazon-q/shell/zshrc.post.zsh"
