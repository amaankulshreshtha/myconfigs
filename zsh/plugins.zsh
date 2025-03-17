plugins=(
  zsh-z
  zsh-syntax-highlighting
)

for plugin in $plugins; do
  plugin_path=$ZSH_CONFIG/plugins/$plugin/$plugin.plugin.zsh
  [[ -f $plugin_path ]] && . $plugin_path
done
