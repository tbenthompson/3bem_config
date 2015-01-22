#!/bin/sh
# GITPROTOCOL="https://github.com/"
GITPROTOCOL=git@github.com:

# Install Docker
curl -sSL https://get.docker.com/ubuntu/ | sudo sh

# Make sure git is installed
sudo apt-get install git

# Download the environment configuration
git clone ${GITPROTOCOL}tbenthompson/3bem_env.git
git@github.com:tbenthompson/3bem_env.git
# Build the environment
cd 3bem_env;
./build;

# Download the libraries and tools and build them
cd ../;
git clone ${GITPROTOCOL}tbenthompson/3bem.git 3bem_dev
git clone -b stable --single-branch \
    ${GITPROTOCOL}tbenthompson/3bem.git 3bem_stable
git clone ${GITPROTOCOL}tbenthompson/elastic.git

./3bem_env/start "cd /home/3bem/3bem_stable; PETSC_DIR=$PETSC_DIR PETSC_ARCH=$PETSC_ARCH python build.py; cd /home/3bem/elastic; PETSC_DIR=$PETSC_DIR PETSC_ARCH=$PETSC_ARCH python build.py;"
