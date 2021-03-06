#!/bin/bash

# Install NVM
if [[ "$(which nvm)" == "nvm not found" ]]; then
  curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.35.1/install.sh | bash
else
  echo "nvm is already installed"
fi

# Setup NVM
export NVM_DIR="$([ -z "${XDG_CONFIG_HOME-}" ] && printf %s "${HOME}/.nvm" || printf %s "${XDG_CONFIG_HOME}/nvm")"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh" # This loads nvm

# Install node 12
nvm install 12

# Install yarn
if [[ "$(which yarn)" == "yarn not found" ]]; then
  curl -sS https://dl.yarnpkg.com/debian/pubkey.gpg | sudo apt-key add -
  echo "deb https://dl.yarnpkg.com/debian/ stable main" | sudo tee /etc/apt/sources.list.d/yarn.list
  sudo apt update -y && sudo apt install --no-install-recommends -y yarn
else
  echo "yarn is already installed"
fi