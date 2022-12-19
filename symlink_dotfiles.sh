#!/usr/bin/env bash

# Ignore certain git files and folders
ignores=(
        .git
        .gitignore
        .gitmodules
)

# Do stuff to each file starting with '.' in ~/dotfiles/
for file in .[!.]*; do
    echo "Found $file ..."

    # Skip if file is in ignore list
    skip=0
    for ig in ${ignores[*]}; do
        if [ "$ig" == "$file" ]; then
            skip=1
	    echo "Ignored $file"
            break
        fi
    done
    if [ $skip == 1 ]; then
        continue
    fi

    # Create symlink for files inside ~/dotfiles/
    rm -rf ~/$file # Remove any remaining broken symlink
    ln -s $PWD/$file ~/$file
    echo "Symlink created: $PWD/$file -> ~/$file"

done

# Implement the config
source ~/.bashrc
