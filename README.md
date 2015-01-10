
## Setup instructions ##
### Ubuntu ###
1. Install docker: `sudo apt-get install docker.io`
2. Download the 3bem_docker repo: `git clone https://github.com/tbenthompson/3bem_docker.git`
3. Generate a key pair: `cd 3bem_docker;./gen_keys` and add the public key "id_rsa.pub" as a permissible key on github. See [this page](https://help.github.com/articles/generating-ssh-keys/) for details. This step would not be necessary for a public code repository.
4. Build the docker images: `./build`
5. Start a docker container `cd ../; ./3bem_docker/start` The 3bem_docker/start script should open a docker container with the current folder shared. 
6. Try `cd ../3bem_stable; python build.py run_tests` to run the tests.
7. Check out some real use-cases: `ls ./inttest` or use the elastic processing tool.

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
