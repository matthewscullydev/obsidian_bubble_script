
#!/bin/bash

# Prompt the user for the number of bubbles
read -p "Enter the number of bubbles: " number

# Set the directory
cd /home/matt/Documents/Obsidian\ Vault/

# Check if the argument for the number of nodes is provided
if [ -n "$number" ]; then
    # If an argument is provided, update the number in both scripts
    sed -i "2s/:1,[0-9][0-9]*/:1,$number/" apply_macro.vim
    sed -i "2s/:1,[0-9][0-9]*/:1,$number/" inverse_macro.vim
fi

# Check if an argument is provided for the file name
if [ -n "$1" ]; then
    # If an argument is provided, open nvim, source the script, write, and quit
    nvim -c ":source apply_macro.vim | wq" "$1"
else
    # If no argument is provided, prompt the user for a file
    read -p "Enter the file name: " file
    # Open nvim, source the script, write, and quit with the provided file name
    nvim -c ":source apply_macro.vim | wq" "$file"
fi
