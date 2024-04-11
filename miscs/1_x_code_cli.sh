#!/bin/bash

# Check if Xcode CLT is already installed
if xcode-select -p &>/dev/null; then
    echo "Xcode Command Line Tools are already installed."
else
    echo "Xcode Command Line Tools are not installed."
    read -p "Do you want to install them? (y/n): " choice
    if [[ "$choice" =~ ^[Yy]$ ]]; then
        xcode-select --install
    else
        echo "Xcode Command Line Tools installation skipped."
    fi
fi
