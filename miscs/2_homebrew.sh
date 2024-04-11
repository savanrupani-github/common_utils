#!/bin/bash

# Check if Homebrew is already installed
if command -v brew &>/dev/null; then
    echo "Homebrew is already installed."
else
    echo "Homebrew is not installed. Installing now..."
    /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install.sh)"
fi

echo 'eval "$(/opt/homebrew/bin/brew shellenv)"' >> ~/.zprofile
eval "$(/opt/homebrew/bin/brew shellenv)"

echo "Please restart terminal and execute 3_mac_setup_1.sh"
