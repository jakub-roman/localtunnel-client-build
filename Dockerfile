FROM node:16-alpine

# connection to server
ENV SERVER=https://localtunnel-server
ENV PASSWORD=
ENV USER=tunnels
ENV SUBDOMAIN=

# our local service
ENV HOST=127.0.0.1
ENV PORT=8080

RUN npm install -g localtunnel-auth

ADD entrypoint.sh /

ENTRYPOINT [ "/entrypoint.sh" ]
