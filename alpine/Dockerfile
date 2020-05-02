FROM alpine

ENV WORKSPACE=/app

RUN mkdir ${WORKSPACE} \
  && addgroup user \
  && adduser --disabled-password -s /bin/sh -G user user \
  && chown user:user ${WORKSPACE}

RUN apk update --no-cache && apk upgrade --no-cache

# Install GOSU
ENV GOSU_VERSION 1.12
RUN set -eux; \
  \
  apk add --no-cache --virtual .gosu-deps \
  ca-certificates \
  dpkg \
  gnupg \
  ; \
  \
  dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; \
  wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; \
  wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; \
  \
  # verify the signature
  export GNUPGHOME="$(mktemp -d)"; \
  gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; \
  gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; \
  command -v gpgconf && gpgconf --kill all || :; \
  rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; \
  \
  # clean up fetch dependencies
  apk del --no-network .gosu-deps; \
  \
  chmod +x /usr/local/bin/gosu; \
  # verify that the binary works
  gosu --version; \
  gosu nobody true

# RUN apk add bash openssh-server
# RUN ssh-keygen -q -t rsa -b 2048 -f /etc/ssh/ssh_host_rsa_key -N '' && ssh-keygen -q -t ecdsa -f /etc/ssh/ssh_host_ecdsa_key -N '' && ssh-keygen -t dsa -f /etc/ssh/ssh_host_ed25519_key  -N ''
# RUN echo "root:root" | chpasswd
# RUN sed -i "s/#PermitRootLogin prohibit-password/PermitRootLogin yes/g" /etc/ssh/sshd_config
# ENTRYPOINT [ "/usr/sbin/sshd", "-D" ]
