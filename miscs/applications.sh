#!/bin/zsh

# List of applications to install
applications=("brave-browser" "zoom" "slack" "docker" "dropbox" "firefox" "notion" "adguard" "adobe-acrobat-reader" "github" "iterm2")

# Install or update each application
for app in "${applications[@]}"; do
    if brew list --cask "$app" &> /dev/null; then
        echo "$app is already installed."
    else
        brew install --cask "$app"
    fi
done

echo "All specified applications have been installed or are already present."
