#!/bin/zsh

# Homebrew installation
# https://brew.sh
if [[ $(command -v brew) == "" ]]; then
    echo "Installing Hombrew"
    /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
else
    echo "Updating Homebrew"
    brew update

    echo "Upgrading Homebrew"
    brew upgrade
fi

# - Run these two commands in your terminal to add Homebrew to your PATH:
# (echo; echo 'eval "$(/opt/homebrew/bin/brew shellenv)"') >> /Users/srupani-nmd/.zprofile
# eval "$(/opt/homebrew/bin/brew shellenv)"

# pyenv installation
# https://github.com/pyenv/pyenv
if [[ $(command -v pyenv) == "" ]]; then
    echo "Installing openssl readline sqlite3 xz"
    brew install openssl readline sqlite3 xz

    echo "Installing pyenv"
    brew install pyenv

    echo "Installing pyenv-virtualenv"
    brew install pyenv-virtualenv

    echo "" >> ~/.zprofile
    echo 'eval "$(pyenv init --path)"' >> ~/.zprofile

    echo "" >> ~/.zshrc
    echo 'eval "$(pyenv init -)"' >> ~/.zshrc
    echo 'eval "$(pyenv virtualenv-init -)"' >> ~/.zshrc
fi


# pyenv-python installation
PYTHON_VERSION=$(python -c 'import sys; print(".".join(map(str, sys.version_info[:2])))')
if [[ $PYTHON_VERSION -lt "3.8" ]]; then
    echo "Installing python"
    pyenv install 3.10.13

    echo "Installing python"
    pyenv install 3.11.8

    echo "Set pyenv global python version"
    pyenv global 3.11.8
fi


# Docker installation
# https://docs.docker.com/docker-for-mac/install/
if [[ $(command -v docker) == "" ]]; then
    echo "Installing Docker"
    brew install --cask docker
fi


# AWS CLI installation
# https://formulae.brew.sh/formula/awscli
if [[ $(command -v aws) == "" ]]; then
    echo "Installing AWS CLI"
    brew install awscli
fi


# AWS SAM CLI installation
# https://docs.aws.amazon.com/serverless-application-model/latest/developerguide/serverless-sam-cli-install.html
if [[ $(command -v sam) == "" ]]; then
    echo "Installing AWS SAM CLI"
    brew tap aws/tap
    brew install aws-sam-cli
fi

# jq installation
# https://stedolan.github.io/jq/download/
if [[ $(command -v jq) == "" ]]; then
    echo "Installing jq"
    brew install jq
fi

echo "Please restart terminal and execute mac-steup-2.sh"
