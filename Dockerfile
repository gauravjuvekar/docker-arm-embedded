FROM ubuntu:latest
MAINTAINER Gaurav Juvekar <gauravjuvekar@gmail.com>

RUN apt-get update && apt-get install -y \
	software-properties-common \ # For apt-add-repository
	git \
	scons \
	build-essential \
	&& apt-add-repository --yes ppa:team-gcc-arm-embedded/ppa \
	&& apt-get update \
	&& apt-get install gcc-arm-embedded \
	&& apt-get clean && rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*

COPY openocd /usr/local/bin
