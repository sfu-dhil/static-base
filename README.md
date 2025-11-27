[![Docker Image Latest Badge](https://ghcr-badge.egpl.dev/sfu-dhil/static-base/latest_tag?trim=major&label=latest)](https://github.com/sfu-dhil/static-base/pkgs/container/static-base)
[![Docker Image Size badge](https://ghcr-badge.egpl.dev/sfu-dhil/static-base/size)](https://github.com/sfu-dhil/static-base/pkgs/container/static-base)

# Static Docker Image

Base docker image for building XML-based static sites in the DHIL

* Base image: node:lts-bullseye-slim
* Installs:
    * Apache ant and ant-contrib (for building)
    * saxon (for running XSLT)
    * sass (compiling SCSS -> CSS)
    * imagemagick (routine image manipulation)
    * jing (RelaxNG validation)
* Working dir: `/var/www`

After the image is pulled, it can be used like so:

1. Running `ant` for a build in ${PROJECT_DIR}/build.xml:

```bash
docker run -v ${PROJECT_DIR}:/var/www ghcr.io/sfu-dhil/static-base:latest ant
```

2. Validating files in a directory using Jing:

```bash
 docker run -v $(pwd):/var/www ghcr.io/sfu-dhil/static-base:latest jing schema/schema.rng documents/*.xml
```
