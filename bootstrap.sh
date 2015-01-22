#!/bin/sh
# GITPROTOCOL="https://"
GITPROTOCOL="git@"
# Install Docker
curl -sSL https://get.docker.com/ubuntu/ | sudo sh

# Make sure git is installed
sudo apt-get install git

# Download the environment configuration
git clone $(GITPROTOCOL)github.com/tbenthompson/3bem_env.git
# Build the environment
cd 3bem_env;
./build;

# Download the libraries and tools and build them
cd ../;
git clone $(GITPROTOCOL)github.com/tbenthompson/3bem.git 3bem_dev
git clone -b stable --single-branch \
    $(GITPROTOCOL)github.com/tbenthompson/3bem.git 3bem_stable
git clone $(GITPROTOCOL)github.com/tbenthompson/elastic.git

./3bem_env/start "cd /home/3bem/3bem_stable; python build.py; cd /home/3bem/elastic; python build.py;"
