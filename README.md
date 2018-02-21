Docker image derived from Node slim that includes NPM, Firebase, and Hugo. Also includes dependencies for Critical. Enables building Hugo-based static sites that may include npm as part of the workflow (scss, minification, etc), as well as Firebase for simple static hosting. Usable with Bitbucket Pipelines and other automated deployment tools that support Docker.

The latest image is available at [https://hub.docker.com/r/mumbles/docker-hugo-npm/](https://hub.docker.com/r/mumbles/docker-hugo-npm/) or simply execute `docker pull mumbles/docker-hugo-npm`.

* `make build` - Builds the docker image.
* `make push` - Publish the image.
* `make shell` - Run a shell in the image.
* `make rmi` - Force remove the image locally.

The default version of 'latest' for the image can be overridden for the purposes of tagging by specifying `make VERSION=x.x.x build`. The same would need to be done for the `push` target to upload the image.

Originally derived from [https://hub.docker.com/r/bpack/hugo-npm/](https://hub.docker.com/r/bpack/hugo-npm/) 

Details on how Benjamin uses this image can be found at [https://www.benjaminpack.com/blog/hugo-site-automation](https://www.benjaminpack.com/blog/hugo-site-automation/).
