FROM alpine

ENV WORKSPACE=/app

RUN mkdir ${WORKSPACE} \
  && addgroup user \
  && adduser --disabled-password -s /bin/sh -G user user \
  && chown user:user ${WORKSPACE}

RUN apk update --no-cache && apk upgrade --no-cache

# RUN apk add bash openssh-server
# RUN ssh-keygen -q -t rsa -b 2048 -f /etc/ssh/ssh_host_rsa_key -N '' && ssh-keygen -q -t ecdsa -f /etc/ssh/ssh_host_ecdsa_key -N '' && ssh-keygen -t dsa -f /etc/ssh/ssh_host_ed25519_key  -N ''
# RUN echo "root:root" | chpasswd
# RUN sed -i "s/#PermitRootLogin prohibit-password/PermitRootLogin yes/g" /etc/ssh/sshd_config
# ENTRYPOINT [ "/usr/sbin/sshd", "-D" ]
