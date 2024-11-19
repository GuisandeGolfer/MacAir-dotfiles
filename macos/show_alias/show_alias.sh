#!/bin/zsh

# Define the path to your .zshrc file
ZSHRC_FILE="$HOME/.zshrc"

# Check if the file exists
if [[ ! -f $ZSHRC_FILE ]]; then
    echo "Error: .zshrc file not found at $ZSHRC_FILE"
    exit 1
fi

# Extract aliases and display them
sed -n 's/^alias \([^=]*\)=\(.*\)/\1 -> \2/p' "$ZSHRC_FILE"
