FROM iinfinity/node
WORKDIR /app
RUN apk add git openjdk11 maven
RUN git clone https://github.com/suwings/mcsmanager.git .
RUN npm i
ENTRYPOINT [ "npm", "start" ]
