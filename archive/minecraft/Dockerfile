FROM iinfinity/java

ARG DOWNLOAD=https://launcher.mojang.com/v1/objects/bb2b6b1aefcd70dfd1892149ac3a215f6c636b07/server.jar

RUN wget ${DOWNLOAD} -O server.jar; \
  echo "eula=true" > eula.txt;

COPY [ "./entrypoint.sh", "/entrypoint.sh" ]

EXPOSE 25565

ENTRYPOINT [ "/entrypoint.sh" ]
