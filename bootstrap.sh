#!/bin/sh
# Install Docker
curl -sSL https://get.docker.com/ubuntu/ | sudo sh

# Make sure git is installed
sudo apt-get install git

# Download the environment configuration
git clone https://github.com/tbenthompson/3bem_env.git
# Build the environment
cd 3bem_env;
./build;

# Download the libraries and tools and build them
cd ../;
git clone https://github.com/tbenthompson/3bem.git 3bem_dev
git clone -b stable --single-branch https://github.com/tbenthompson/3bem.git 3bem_stable
git clone https://github.com/tbenthompson/elastic.git

./start "
cd 3bem_stable; 
python build.py;
cd ../elastic;
python build.py;
"
