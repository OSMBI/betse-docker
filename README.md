# betse-docker

### Usage:

Clone the repository to desired location and cd in, using docker from command line run:

`docker build -t betse .`

Docker should now take 10/15 minutes to install relevant information, expect install to be ~800MB. Once this is done, then run:

`docker run -it betse`

This will work in any directory and take you to a command-line, once in the usual standard configuration commands for BETSE need to be done, these include:

```betse config my_sim/config.yml
betse seed my_sim/config.yml
betse init my_sim/config.yml```

With these done, BETSE will run as usual in the docker

`betse sim my_sim/config.yml`

More intelligent design to have BETSE as a volume not somewhere in the deep virtual directories of a docker container would require you to clone the BETSE repository first and to then adding the command

`COPY /src/ /build/`

With the current `docker-compose.yml` will create a native volume that updates the docker while remaining accessible with the rest of the relevant files for the container.
