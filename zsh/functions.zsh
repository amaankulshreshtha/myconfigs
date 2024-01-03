
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

# Dev
mirror_android_screen() {
  scrcpy -m 1024
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
colormap() {
  for i in {0..255}; do print -Pn "%K{$i}  %k%F{$i}${(l:3::0:)i}%f " ${${(M)$((i%6)):#3}:+$'\n'}; done
}

ytdl() {
  youtube-dl -x --audio-format 'mp3' --embed-thumbnail "$1"
}


# System
mkcd() {
  mkdir -p -- "$1" &&
  cd -P -- "$1"
}

restart_sound() {
  sudo launchctl stop com.apple.audio.coreaudiod && sudo launchctl start com.apple.audio.coreaudiod
}

prettify_path() {
  tr ':' '\n' <<< "$PATH"
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