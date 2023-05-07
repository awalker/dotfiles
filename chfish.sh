#!/bin/bash

# Get the current user's login shell
current_shell=$(echo $SHELL)
wanted=$(which fish)
echo "Current Shell: $current_shell we want $wanted"

# Check if the current shell is already fish
if [[ "$current_shell" == *"fish"* ]]; then
	echo "Shell is already fish."
else
	# Set the user's shell to fish
	chsh -s $wanted
	echo "Shell changed to fish."
fi
