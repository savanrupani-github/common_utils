#!/bin/zsh

echo "Updating Homebrew"
brew update

echo "Upgrading Homebrew"
brew upgrade

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
echo "Installing python"
pyenv install 3.12.2
pyenv install 3.11.8
pyenv install 3.10.14


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

echo "Please restart terminal and execute 4_mac_setup_2.sh"
