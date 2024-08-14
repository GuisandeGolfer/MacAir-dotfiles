#!/bin/bash

set -e
SCRIPT_DIR=$( cd -- "$( dirname -- "${BASH_SOURCE[0]}" )" &> /dev/null && pwd )
PRESENT=false

# Detect the operating system
OS=$(uname)

# Define DOT_FOLDERS based on the OS
if [[ "$OS" == "Linux" ]]; then
    DOT_FOLDERS_DIR="$SCRIPT_DIR/ubuntu"
elif [[ "$OS" == "Darwin" ]]; then
    DOT_FOLDERS_DIR="$SCRIPT_DIR/macos"
else
    echo "Unsupported operating system: $OS"
    exit 1
fi

# Parse other arguments
# for i in "$@"; do
#   case $i in
#     -m|--macos)
#         echo "Enabling MacOS files..."
#         if [[ "$OS" != "Darwin" ]]; then
#             echo "This option is only valid on macOS."
#             exit 1
#         fi
#         DOT_FOLDERS_DIR="$SCRIPT_DIR/macos"
#         ;;
#     -u|--ubuntu)
#         echo "Enabling Ubuntu files..."
#         if [[ "$OS" != "Linux" ]]; then
#             echo "This option is only valid on Linux."
#             exit 1
#         fi
#         DOT_FOLDERS_DIR="$SCRIPT_DIR/ubuntu"
#         ;;
#     -*|--*)
#         echo "Unknown option $i"
#         exit 1
#         ;;
#     *)
#         ;;
#   esac
# done

echo "[+] Dotfiles :: $DOT_FOLDERS_DIR"

if ! command -v stow &> /dev/null; then
    echo "stow is not installed, installing now"
    sudo apt install -y stow
fi

# Check if the directory exists
if [[ ! -d "$DOT_FOLDERS_DIR" ]]; then
    echo "Directory $DOT_FOLDERS_DIR does not exist."
    exit 1
fi

# Stow and unstow relevant directories based on the OS
for folder in "$DOT_FOLDERS_DIR"/*; do
    if [[ -d "$folder" ]]; then
        folder_name=$(basename "$folder")
        echo "[+] Folder :: $folder_name"

        stow -d "$DOT_FOLDERS_DIR" -t $HOME -D $folder_name \
            --ignore=README.md --ignore=LICENSE
        stow -d "$DOT_FOLDERS_DIR" -t $HOME $folder_name
    fi
done

# Look for DOT_FOLDER in the .dotfiles
while IFS= read -r var; do
  [[ $var =~ ^DOT_FOLDER.* ]] && PRESENT=true
done < "$HOME/.dotfiles"

# If not present, write the DOT_FOLDER var into the file
if [[ $PRESENT == "false" ]]; then
    echo "[+] Adding DOT_FOLDER to .dotfiles"
    echo "DOT_FOLDER=$SCRIPT_DIR" >> $HOME/.dotfiles
fi

# Reload shell once installed
echo "[+] Reloading shell..."
exec $SHELL -l
