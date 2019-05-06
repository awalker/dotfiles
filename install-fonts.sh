#!/usr/bin/env bash
# Fonts
if [[ $(uname) == 'Darwin' ]]; then
  font_dir="/Library/Fonts"
else
  font_dir="$HOME/.fonts"
  mkdir -p $font_dir
fi
# Put it all together into the find command we want
find_command="find $HOME/dotfiles/fonts \\( \\( -name '*.[o,t]tf' -or -name '*.pcf.gz' \\) \\) -type f -print0"

# Find all the font files and store in array
files=()
while IFS=  read -r -d $'\0'; do
  files+=("$REPLY")
done < <(eval "$find_command")

ln -sfv "${files[@]}" "$font_dir"

if [[ -n $(which fc-cache) ]]; then
  sudo fc-cache -vf "$font_dir"
fi

