#!/bin/bash

# Set the directory path with PNG files
PNG_DIR="$HOME/.dotfiles/backgrounds"

# Check if the directory exists
if [ ! -d "$PNG_DIR" ]; then
  echo "Error: Directory $PNG_DIR does not exist."
  echo "Creating directory..."
  mkdir -p "$PNG_DIR"
  echo "Please add your PNG files to $PNG_DIR"
  exit 1
fi

# Count the number of files in the directory
file_count=$(find "$PNG_DIR" -type f -name "*.png" | wc -l)

# Check if there are any .png files
if [[ $file_count -eq 0 ]]; then
  echo "No .png files found in $PNG_DIR"
  exit 1
fi

# Get a random file from the directory
random_file=$(find "$PNG_DIR" -type f -name "*.png" | sort -R | head -n 1)

# Display the content of the random file using chafa
chafa "$random_file" --format symbols --symbols vhalf --size 40x12 --stretch
sleep .1
