#!/bin/zsh

# oh-my-zsh installation
# https://ohmyz.sh
if [[ $(echo $ZSH) == "" ]]; then
    echo "Installing oh-my-zsh"
    sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

    echo "" >> ~/.zshrc
    echo "" >> ~/.zshrc
    echo "# ~/.zshrc.pre-oh-my-zsh content" >> ~/.zshrc
    cat ~/.zshrc.pre-oh-my-zsh >> ~/.zshrc
fi


# Pipenv setup
# https://pipenv.pypa.io/en/latest/
# pipenv installation
pip install --upgrade pip
pip install pipenv

# Add to ~.zshrc after execution: source $HOMEBREW_PREFIX/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
brew install zsh-syntax-highlighting

# Add to ~.zshrc after execution: source $HOMEBREW_PREFIX/share/zsh-autosuggestions/zsh-autosuggestions.zsh
brew install zsh-autosuggestions
