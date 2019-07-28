#!/bin/sh

set -e
ditdot="$(pwd)/../.."

# Needed for most themes
sudo apt-get install -y fonts-powerline

rm -rf $HOME/.oh-my-zsh
rm -rf $HOME/.zsh*

# Install oh-my-zsh
curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh | sh

# Install plugins
git clone https://github.com/zsh-users/zsh-autosuggestions ~/.oh-my-zsh/custom/plugins/zsh-autosuggestions
git clone https://github.com/zsh-users/zsh-syntax-highlighting ~/.oh-my-zsh/custom/plugins/zsh-syntax-highlighting

# Copy over config
cp $ditdot/zsh/.zsh_history $HOME
cp $ditdot/zsh/.zshrc $HOME
cp $ditdot/zsh/agnoster.zsh-theme $HOME/.oh-my-zsh/themes/

# Change shell
chsh -s /usr/bin/zsh

