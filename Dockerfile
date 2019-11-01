FROM debian:latest
RUN apt-get update && apt-get install -y dnsutils
ADD https://github.com/Jigsaw-Code/outline-ss-server/releases/download/v1.0.7/outline-ss-server_1.0.7_linux_x86_64.tar.gz /tmp/
RUN mkdir -p /app/outline
WORKDIR /app/outline
RUN tar -xzf /tmp/outline*.tar.gz
RUN rm /tmp/outline*
WORKDIR /app
ENTRYPOINT /app/outline/outline-ss-server -config $OUTLINE_CONFIG
