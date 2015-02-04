
## Setup instructions ##
### Ubuntu ###
1. Install docker: `sudo apt-get install docker.io`
2. Download the bootstrap script and install the libraries and tools: `wget https://github.com/tbenthompson/3bem_config/raw/master/bootstrap.sh ; chmod +x ./bootstrap.sh; ./bootstrap.sh;`
3. Start a docker container `./config/start` The config/start script should open a docker container with the current folder shared. 
4. Try `cd 3bem_stable; python build.py fast_tests` to run the tests.
5. Check out some real use-cases: `ls ./inttest` or use the "elastic" processing tool.

### Mac OS X###
Installing on Mac is slightly more involved because Docker does not run natively on anything other than Linux. So, the tool boot2docker adds a very lightweight Linux virtual machine between your OS and the Docker application.

1. Install virtualbox. Go to the [virtual box website](http://virtualbox.org/).
2. Install boot2docker. Go to the [Docker website](https://docs.docker.com/installation/mac/) and follow the directions there.
3. If you want to be able to use GUI tools (matplotlib, etc) within the docker container, install XQuartz.
4. Follow step 2 onwards from the Ubuntu section.

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
* Build stable-lib in the mac build process.
