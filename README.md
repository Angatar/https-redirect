# https-redirect (d3fk/https-redirect)
A nginx:alpine container that is set to redirect everything to https


## Docker image
pre-build from Docker hub with "automated build" option.

image name **d3fk/https-redirect**

`docker pull d3fk/https-redirect`

Docker hub repository: https://hub.docker.com/r/d3fk/https-redirect/

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

This container was initially created to serve in a kubernetes context: The default ingress controler in use on our k8s cluster didn't managed correctly the force-ssl-redirect directive and it was disproportionated (additional resources consuming with several pods created) to go with another ingress controller (Nginx, Traefic, HAProxy etc...) simply for that purpose since this small container can do the stuff. You can use as templates the YAML files provided in the k8s directory of this repository for your own cluster.

