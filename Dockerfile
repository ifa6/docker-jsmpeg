FROM node:6-alpine

RUN apk add --no-cache ffmpeg \
	&& npm -g install http-server

COPY jsmpeg /opt/jsmpeg

RUN cd /opt/jsmpeg \
    && npm install ws \
    && ln -s ./view-stream.html ./index.html

COPY entrypoint.sh /entrypoint.sh

ENTRYPOINT ["/entrypoint.sh"]
