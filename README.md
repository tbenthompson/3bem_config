
### Setup instructions ###
1. Install docker or boot2docker.
2. Download the 3bem docker scripts: `git clone https://github.com/tbenthompson/3bem_docker.git`
3. Build the docker images: `cd 3bem_docker; ./build`
4. Download the 3bem source: `cd ../; git clone https://github.com/tbenthompson/3bem.git`
5. Start the docker container: `cd 3bem; ../3bem_docker/start`

Various useful sources:

* http://stackoverflow.com/questions/15693153/mounting-directory-from-parent-system-to-container-in-docker
* http://stackoverflow.com/questions/21498832/in-docker-whats-the-difference-between-a-container-and-an-image
* http://viget.com/extend/how-to-use-docker-on-os-x-the-missing-guide
* http://tersesystems.com/2013/11/20/building-a-development-environment-with-docker/
* https://docs.docker.com/installation/mac/

TODO: 

* I need to get a hold of a mac to figure out the proper instructions for using boot2docker.
* Use my virtual-machined Windows XP to figure out basic Windows instructions.
