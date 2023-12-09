
#!/bin/bash

# Set the directory
cd /home/matt/Documents/Obsidian\ Vault/

# Check if an argument is provided
if [ -n "$1" ]; then
    # If an argument is provided, open nvim, source the script, write, and quit
    nvim -c ":source inverse_macro.vim | wq" "$1"
else
    # If no argument is provided, prompt the user for a file
    read -p "Enter the file name: " file
    # Open nvim, source the script, write, and quit with the provided file name
    nvim -c ":source inverse_macro.vim | wq" "$file"
fi
