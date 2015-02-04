#!/bin/sh
# GITPROTOCOL="https://github.com/"
GITPROTOCOL=git@github.com:

#Make sure docker is installed
if [[ "$OSTYPE" == "linux-gnu" ]]; then
    # Install Docker on linux
    curl -sSL https://get.docker.com/ubuntu/ | sudo sh
elif [[ "$OSTYPE" == "darwin"* ]]; then
    # On Mac, check if boot2docker is installed.
    command -v boot2docker >/dev/null 2>&1 || 
        { echo "Install boot2docker before continuing." >&2; exit 1; }
fi

# Make sure git is installed
if [[ "$OSTYPE" == "linux-gnu" ]]; then
    # Install git on linux
    sudo apt-get install git
    curl -sSL https://get.docker.com/ubuntu/ | sudo sh
elif [[ "$OSTYPE" == "darwin"* ]]; then
    # On Mac, check if git is installed.
    command -v git >/dev/null 2>&1 || 
        { echo "Install git before continuing." >&2; exit 1; }
fi

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
