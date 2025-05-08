#!/bin/bash

# Required parameters:
# @raycast.schemaVersion 1
# @raycast.title nq-math
# @raycast.mode fullOutput

# Optional parameters:
# @raycast.icon 🤖

# Documentation:
# @raycast.description quickly determine nq point trade $ amount
# @raycast.author Diego
#
# # Typed argument:
# @raycast.argument1 { "type": "text", "placeholder": "Enter something…" }

# Use the first argument instead of reading from STDIN
line="$1"

# Remove all whitespace
line=${line//[[:space:]]/}

# Split on the dash
a=${line%-*}
b=${line#*-}

# Compute (a - b) * 20
result=$(((a - b) * 20))

# Print with a leading dollar sign
printf '$%d\n' $result
