
## Setup instructions ##
### Ubuntu ###
1. Install docker: `sudo apt-get install docker.io`
2. Download 3bem: `git clone https://github.com/tbenthompson/3bem.git`
3. Grab the 3bem_docker submodule: `cd 3bem; git submodule init; git submodule update;`
4. Build the docker images: `cd 3bem_docker; ./build`
5. Start a docker container `cd ../; ./3bem_docker/start` The 3bem_docker/start script should open a docker container with the current folder shared. So, by starting the 
6. Play! (Try: `python build.py; ./all_tests;`)

### Mac OS X###
Installing on Mac is slightly more involved because Docker does not run natively on anything other than Linux. So, the tool boot2docker adds a very lightweight Linux virtual machine between your OS and the Docker application.

1. Install virtualbox. Go to the [virtual box website](http://virtualbox.org/).
2. Install boot2docker. Go to the [Docker website](https://docs.docker.com/installation/mac/) and follow the directions there.
3. Download 3bem: `git clone https://github.com/tbenthompson/3bem.git`
4. Grab the 3bem_docker submodule: `cd 3bem; git submodule init; git submodule update;`
5. Build the docker images: `cd 3bem_docker; ./build`
6. Start a docker container `cd ../; ./3bem_docker/start` The 3bem_docker/start script should open a docker container with the current folder shared. So, by starting the 
7. Play! (Try: `python build.py; ./all_tests;`)

## Notes ##

Various useful sources for understanding docker:
* http://stackoverflow.com/questions/15693153/mounting-directory-from-parent-system-to-container-in-docker
* http://stackoverflow.com/questions/21498832/in-docker-whats-the-difference-between-a-container-and-an-image
* http://viget.com/extend/how-to-use-docker-on-os-x-the-missing-guide
* http://tersesystems.com/2013/11/20/building-a-development-environment-with-docker/
* https://docs.docker.com/installation/mac/
* http://stackoverflow.com/questions/25185405/using-gpu-from-a-docker-container
* http://stackoverflow.com/questions/23544282/what-is-the-best-way-to-manage-permissions-for-docker-shared-volumes
* OpenGL and Nvidia graphics: https://github.com/thewtex/docker-opengl-nvidia

TODO: 
* Use my virtual-machined Windows installation to figure out basic Windows instructions.
