# Builder tool

This docker image serves to install ansible, ansible-bender, buildah, and podman to create environment to build docker images from ansible playbooks.

This is merely an example, and more research is needed to be able to maybe access the host docker to use to build images...

## Build image

``` bash
docker build -t infra-builder .
```
