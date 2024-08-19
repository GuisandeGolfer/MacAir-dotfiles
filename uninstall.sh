#!/bin/bash

set -e
SCRIPT_DIR=$( cd -- "$( dirname -- "${bash_source[0]}" )" &> /dev/null && pwd)

OS=$(uname)

if [[ "$OS" == "Linux" ]]; then
   DOT_FOLDERS_DIR="$SCRIPT_DIR/ubuntu"
elif [[ "$OS" == "Darwin" ]]; then
   DOT_FOLDERS_DIR="$SCRIPT_DIR/macos"
else
   echo "unsupported os: $OS"
   exit 1
fi

for folder in "$DOT_FOLDERS_DIR"/*; do
   if [[ -d "$folder" ]]; then
      folder_name=$(basename "$folder")
      echo "[-] :: $folder"
      stow -d "$DOT_FOLDERS_DIR" -D -v -t "$HOME" "$folder_name" --ignore=README.md
      # stow -t $HOME $folder
   fi

done


echo "[+] reloading shell"
exec $SHELL -l
