FROM ubuntu:16.04


# Grab Ops tools
RUN apt-get update \
	&& apt-get install -y --no-install-recommends \
		ca-certificates curl \
		numactl \
		telnet \
		htop \
		nano \
		vim \
		jq \
	&& rm -rf /var/lib/apt/lists/*
