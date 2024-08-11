#!/bin/zsh

# Fetch the current UTC time from a time server
current_time=$(curl -s --head http://worldtimeapi.org/api/timezone/America/Los_Angeles | grep ^date: | cut -d' ' -f2-)

# Remove the trailing carriage return, if present
current_time=${current_time%$'\r'}

# Convert to ISO 8601 format
iso_time=$(date -j -f "%a, %d %b %Y %H:%M:%S %Z" "$current_time" "+%Y-%m-%dT%H:%M:%S%z")

# Insert the colon in the timezone offset
formatted_time=$(echo $iso_time | sed 's/\([+-][0-9][0-9]\)\([0-9][0-9]\)$/\1:\2/')

# Copy to clipboard
# TODO: need to update this to switch to 'xclip -selection clipboard' for ubuntu
echo $formatted_time | pbcopy

# Print the result (optional)
echo "The following date has been copied to your clipboard:"
echo $formatted_time
