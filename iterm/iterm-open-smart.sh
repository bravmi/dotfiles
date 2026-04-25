#!/usr/bin/env bash

file="$1"
line="$2"

# Fallback if line is empty or not numeric
if ! [[ "$line" =~ ^[0-9]+$ ]]; then
  line=1
fi

if [[ "$file" == *.py ]]; then
  /opt/homebrew/bin/pycharm --line "$line" "$file"
elif [[ "$file" == *.go ]]; then
  /opt/homebrew/bin/goland --line "$line" "$file"
else
  open "$file"
fi
