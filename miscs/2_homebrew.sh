#!/bin/bash

# Check if Homebrew is already installed
if command -v brew &>/dev/null; then
    echo "Homebrew is already installed."
else
    echo "Homebrew is not installed. Installing now..."
    /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install.sh)"
fi
