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
		git \
	&& rm -rf /var/lib/apt/lists/*


COPY . /project2/
RUN bash -c "echo 1"
RUN bash -c "echo 2"
