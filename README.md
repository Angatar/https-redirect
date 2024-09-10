[![Docker Pulls](https://badgen.net/docker/pulls/d3fk/https-redirect?icon=docker&label=pulls&cache=600)](https://hub.docker.com/r/d3fk/https-redirect/tags) [![Docker Image Size](https://badgen.net/docker/size/d3fk/https-redirect/latest?icon=docker&label=image%20size&cache=600)](https://hub.docker.com/r/d3fk/https-redirect/tags) [![Docker build](https://img.shields.io/badge/automated-automated?style=flat&logo=docker&logoColor=blue&label=build&color=green&cacheSeconds=600)](https://hub.docker.com/r/d3fk/https-redirect/tags) [![Docker Stars](https://badgen.net/docker/stars/d3fk/https-redirect?icon=docker&label=stars&color=green&cache=600)](https://hub.docker.com/r/d3fk/https-redirect) [![Github Stars](https://img.shields.io/github/stars/Angatar/https-redirect?label=stars&logo=github&color=green&style=flat&cacheSeconds=600)](https://github.com/Angatar/https-redirect) [![Github forks](https://img.shields.io/github/forks/Angatar/https-redirect?logo=github&style=flat&cacheSeconds=600)](https://github.com/Angatar/https-redirect/fork) [![Github open issues](https://img.shields.io/github/issues-raw/Angatar/https-redirect?logo=github&color=yellow&cacheSeconds=600)](https://github.com/Angatar/https-redirect/issues) [![Github closed issues](https://img.shields.io/github/issues-closed-raw/Angatar/https-redirect?logo=github&color=green&cacheSeconds=600)](https://github.com/Angatar/https-redirect/issues?q=is%3Aissue+is%3Aclosed) [![GitHub license](https://img.shields.io/github/license/Angatar/https-redirect)](https://github.com/Angatar/https-redirect/blob/master/LICENSE)



# https-redirect (d3fk/https-redirect)
A nginx:alpine-slim container([![Docker Image Size](https://badgen.net/docker/size/d3fk/https-redirect/latest?icon=docker&label=compressed)](https://hub.docker.com/r/d3fk/https-redirect/tags)) that is set to redirect everything to https


## Docker image
Prebuilt from Docker hub with "automated build" option, now available as multi-arch image for most of architectures, i.e:
- linux/amd64
- linux/386
- linux/arm/v6
- linux/arm/v7
- linux/arm64/v8
- linux/ppc64le
- linux/s390x

image name **d3fk/https-redirect**

`docker pull d3fk/https-redirect`

Docker hub repository: https://hub.docker.com/r/d3fk/https-redirect/

[![DockerHub Badge](https://dockeri.co/image/d3fk/https-redirect)](https://hub.docker.com/r/d3fk/https-redirect)

## Usage
Really useful if you need to redirect any request sent to a port (any) to https protocol
### Use case
You already have something (app, container...) running on https and do not want to manage any redirection from other ports within this something ... this container is what you are looking for.

### Docker usage
If you need to redirect requests sent on port 80 to https: 

`docker run --name https-redirect -d -p 80:80 d3fk/https-redirect`

In case you also need to redirect requests from port 8080 in addition to the port 80 towards https you can simply run:

`docker run --name https-redirect -d -p 80:80 -p 8080:80 d3fk/https-redirect`

You can redirect from any port to https, simply adapt the ports numbers to your needs.


### Kubernetes usage

This container was initially created to serve in a kubernetes context: The default ingress controler in use with our k8s cluster didn't managed correctly the force-ssl-redirect directive and it was disproportionated (additional resources consuming with several pods created) to go with another ingress controller (Nginx, Traefic, HAProxy etc...) simply for that purpose since this small container can do the stuff. You can use as templates the YAML files provided in the k8s directory of this repository for your own cluster.

[![GitHub license](https://img.shields.io/github/license/Angatar/https-redirect)](https://github.com/Angatar/https-redirect/blob/master/LICENSE)

