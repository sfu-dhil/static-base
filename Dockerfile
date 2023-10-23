FROM node:lts-bullseye-slim
# Set LANG to UTF-8
ENV LANG C.UTF-8
WORKDIR /var/www

ARG SAXON_VERSION=10.3

ADD https://repo1.maven.org/maven2/net/sf/saxon/Saxon-HE/${SAXON_VERSION}/Saxon-HE-${SAXON_VERSION}.jar \
    /usr/local/saxon.jar

COPY ./scripts/saxon.sh /usr/local/bin/saxon

RUN chmod a+rx /usr/local/bin/saxon \
    && chmod a+rx /usr/local/saxon.jar \
    && apt-get update \
    && apt-get install -y --no-install-recommends \
        ant \
        ant-contrib \
        imagemagick \
        jing \
    && npm install -g sass
