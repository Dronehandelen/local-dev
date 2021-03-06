#!/bin/bash

source $HOME/.nvm/nvm.sh

# cd to this script directory
cd "$(dirname "$0")"
# Then go to packages
cd ../sourcecode

nvm use 14

pushd frontend
yarn
popd

pushd admin-frontend
yarn
popd

pushd api
yarn
./install-liquibase.sh
popd

pushd cdn
yarn
popd

pushd fiken
yarn
popd

pushd vipps-settlements
yarn
popd

pushd recommender
python3 -m venv venv
source venv/bin/activate
pip install -r requirements.txt
deactivate
popd