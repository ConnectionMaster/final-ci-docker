# Dockerized final-api application

This solution allows running Dockerized version of [Final-API](https://github.com/AVGTechnologies/final-api).

## What does it mean "dockerized"? What is the motivation?
Docker is a solution allowing definition of service containers, which can
be used for comfortable service deployment and cleanup.

This version of final-api targets to bring more comfort to the
developers.

## How can I use this solution?
* Clone this repository
* [Install Docker](https://docs.docker.com/engine/installation/linux/)
* [Install docker-compose](https://docs.docker.com/compose/install/) >= 1.8.0
* Copy necessary certificates to ./base-image/certs (CRT format)
* Prepare services as described below
* Run `make` to prepare images
* Set mounted volumes for final-api in compose file
* Run `docker-compose up` to launch the docker for you

# Setup services

## Final-api
* Clone [Final-API](https://github.com/AVGTechnologies/final-api)
* Adjust the Final-API configs
* Prepare tsd validator in your final-api project or in ./examples/final-api/bin
* Prepare config/.env file in your final-api project or in ./examples/final-api/config

## Atom-ui
* Clone your preferred front end web to view final-ci results or fill-up repo address in Dockerfile
* Adjust web configuration
