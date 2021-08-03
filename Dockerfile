FROM influxdb:2.0

LABEL maintainer="patch"

RUN apt-get update && apt-get upgrade -y

RUN apt-get update && \
    apt-get install gcc mono-mcs && \
    rm -rf /var/lib/apt/lists/* && \
    apt-get install gcc
