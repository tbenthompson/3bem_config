#!/bin/sh
# GITPROTOCOL="https://github.com/"
GITPROTOCOL=git@github.com:

# Install Docker
curl -sSL https://get.docker.com/ubuntu/ | sudo sh

# Make sure git is installed
sudo apt-get install git

# Download the environment configuration
git clone ${GITPROTOCOL}tbenthompson/3bem_config.git config

# Build the environment
cd config;
./build;

# Download the libraries and tools and build them
cd ../;
git clone ${GITPROTOCOL}tbenthompson/3bem.git devlib
git clone -b stable --single-branch \
    ${GITPROTOCOL}tbenthompson/3bem.git stablelib
git clone ${GITPROTOCOL}tbenthompson/elastic.git

./config/start "cd /home/3bem/stablelib; PETSC_DIR=$PETSC_DIR PETSC_ARCH=$PETSC_ARCH python build.py; cd /home/3bem/elastic; PETSC_DIR=$PETSC_DIR PETSC_ARCH=$PETSC_ARCH python build.py;"
