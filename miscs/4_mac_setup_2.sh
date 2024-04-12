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

    brew install zsh-syntax-highlighting

    brew install zsh-autosuggestions

    brew install powerlevel10k

    echo "" >> ~/.zshrc
    echo "source $HOMEBREW_PREFIX/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh" >> ~/.zshrc
    echo "source $HOMEBREW_PREFIX/share/zsh-autosuggestions/zsh-autosuggestions.zsh" >> ~/.zshrc
    echo "source $(brew --prefix)/share/powerlevel10k/powerlevel10k.zsh-theme" >> ~/.zshrc
fi

