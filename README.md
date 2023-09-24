# Static Docker Image  

Base docker image for building XML-based static sites in the DHIL

* Base image: node:lts-bullseye-slim
* Installs:
    * Apache ant and ant-contrib (for building)
    * saxon (for running XSLT)
    * sass (compiling SCSS -> CSS)
    * imagemagick (routine image manipulation)