ARG NODE_VERSION
ARG UBUNTU_VERSION
FROM ubuntu:${UBUNTU_VERSION}

ENV NODE_VERSION=$NODE_VERSION

# RUN apt update \
#     && apt upgrade -y \
#     && apt install -y --no-install-recommends \
#     tzdata locales \
#     openssh-client apt-transport-https net-tools netcat  \
#     ca-certificates libgnutls30 unzip curl \
#     && apt clean \
#     && rm -rf "/tmp/*" "/var/lib/apt/lists/*"

RUN echo $NODE_VERSION > foobar.txt

# RUN curl -sL "https://deb.nodesource.com/setup_${NODE_VERSION}.x" | bash - \
#     && apt-get -y install nodejs
