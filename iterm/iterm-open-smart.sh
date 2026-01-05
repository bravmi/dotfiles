#!/usr/bin/env bash

file="$1"
line="$2"

# If it's a Python file, open in PyCharm at the given line
if [[ "$file" == *.py ]]; then
  # Fallback if line is empty or not numeric
  if ! [[ "$line" =~ ^[0-9]+$ ]]; then
    line=1
  fi
  /opt/homebrew/bin/pycharm --line "$line" "$file"
else
  # Non-Python files -> open with default app
  open "$file"
fi
