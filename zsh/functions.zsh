# Git
git_stash_apply() {
  git stash list --grep="$1" --format="%gd" | xargs -I{} git stash apply {}
}

git_stash_drop() {
  git stash list --grep="$1" --format="%gd" | xargs -I{} git stash drop {}
}

get_stash_name() {
  gstshl | awk -F ': ' '{print $3}'
}

git_remove_all_changes() {
  git reset --hard HEAD && git clean -fd
}

# Dev
mirror_android_screen() {
  scrcpy --no-audio
}

record_android_screen() {
  scrcpy -r "$1"
}

nvmi() {
  nvm install "$1" --reinstall-packages-from=node --latest-npm
}

# Ruby
check_rbenv_update() {
  RBENV_GIT="$HOME/.rbenv/.git"
  OUT="$(git --git-dir=$RBENV_GIT diff master origin/master)"

  if [ -n "$OUT" ]; then
    git --git-dir=$RBENV_GIT pull
  fi
}

# Android
android_device_serial() {
  adb devices | grep 5555 | awk '{print $1}'
}

# Utils
ytdl() {
  youtube-dl -x --audio-format 'mp3' --embed-thumbnail "$1"
}

# System
mkcd() {
  mkdir -p -- "$1" &&
    cd -P -- "$1"
}

brew_log() {
  if [[ $1 == "install" ]]; then
    brew "$@" && echo "$2" >>$INSTALL_LOG_PATH
  elif [[ $1 == "uninstall" ]]; then
    brew "$@" && sed -i '' "/$2/d" $INSTALL_LOG_PATH
  else
    brew "$@"
  fi
}

restart_sound() {
  sudo launchctl stop com.apple.audio.coreaudiod && sudo launchctl start com.apple.audio.coreaudiod
}

prettify_path() {
  tr ':' '\n' <<<"$PATH"
}

show_all_folders() {
  defaults write com.apple.finder AppleShowAllFiles TRUE
  killall Finder
}

hide_all_folders() {
  defaults write com.apple.finder AppleShowAllFiles FALSE
  killall Finder
}

conv_mov_2_gif() {
  ffmpeg -i "$1" -pix_fmt rgb8 -r 10 "$2" && gifsicle -O3 "$2" -o "$2"
}

force_open() {
  xattr -d com.apple.quarantine "$1"
}

force_close() {
  pkill "$1"
}

unzip_file() {
  unzip "$1" -d "${1%%.zip}"
}

ssh_add() {
  ssh-add ~/.ssh/"$1"
}

time_zsh() {
  time zsh -i -c exit
}

rename() {
  if [ "$#" -ne 2 ]; then
    return 1
  fi

  old_name="$1"
  dir_path=$(dirname "$old_name")

  new_name="$2"
  full_new_name="$dir_path/$new_name"

  # Rename the file/directory
  mv "$old_name" "$full_new_name"
}

# switch between release and beta xcodes
# xcswitch() {
#     RELEASE="Xcode.app"
#     BETA="Xcode-beta.app"

#     CURRENT=$(xcode-select -p)
#     NEXT=""

#     if [[ "$CURRENT" =~ "$RELEASE" ]]
#     then
#         NEXT="$BETA"
#     else
#         NEXT="$RELEASE"
#     fi

#     sudo xcode-select -s "/Applications/$NEXT"
#     echo "Switched to $NEXT"
# }

svgthis() {
  svgo *.svg --config=$HOME/.svgo.config.js
}
