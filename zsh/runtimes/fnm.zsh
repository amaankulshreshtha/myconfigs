if [ -d "$FNM_PATH" ]; then
  eval "$(fnm env --use-on-cd --shell zsh)"
fi
