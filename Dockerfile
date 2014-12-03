# 
# Dockerfile for 3BEM.
# 

# Pull base image
FROM ubuntu
MAINTAINER T. Ben Thompson <t.ben.thompson@gmail.com>

# Install necessary apt packages (keep in alphabetic order)
RUN apt-get update && apt-get install -y \
    alien\
    cmake\
    freeglut3\ 
    freeglut3-dev\
    gdb\
    git\
    h5utils\
    libcanberra-gtk-module\
    libglew1.5\
    libglew1.5-dev\
    libglu1-mesa\
    libglu1-mesa-dev\
    libgl1-mesa-glx\
    libgl1-mesa-dev\
    libhdf5-mpi-dev\
    libnuma1\
    mayavi2\
    petsc-dev\
    python-dev\ 
    python-distribute\
    python-h5py\
    python-matplotlib\
    python-numpy\
    python-scipy\
    python-pip\
    strace\
    subversion\
    wget

# Setup the repository directory
RUN mkdir -p /home/3bem

# Download the libraries
WORKDIR /home/3bem
RUN mkdir lib
WORKDIR lib

# Autocheck
RUN git clone https://github.com/tbenthompson/autocheck.git

# UnitTest++
WORKDIR /home/3bem/lib
RUN svn checkout http://svn.code.sf.net/p/unittest-cpp/code/UnitTest++ unittest-cpp
WORKDIR unittest-cpp
RUN make all

#Okada wrapper
WORKDIR /home/3bem/
RUN git clone https://github.com/tbenthompson/okada_wrapper.git
WORKDIR okada_wrapper
RUN python setup.py install

# Add environment variables and initial directory to bashrc
RUN echo "cd /home/3bem/3bem; export PETSC_DIR=/etc/alternatives/petsc; export PETSC_ARCH=linux-gnu-c-opt" >> ~/.bashrc

# Make the terminal prettier.
RUN echo 'export PS1="\[$(tput bold)\]\[$(tput setaf 4)\][\[$(tput setaf 5)\]\u\[$(tput setaf 4)\]@\[$(tput setaf 5)\]docker \[$(tput setaf 2)\]\W\[$(tput setaf 4)\]]\\$ \[$(tput sgr0)\]" # "' >> ~/.bashrc
