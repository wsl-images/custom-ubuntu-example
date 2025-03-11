FROM ghcr.io/wsl-images/ubuntu:latest
LABEL authors="wsl-images"

COPY ./config /tmp/config

RUN chmod +x /tmp/config/docker/0-install-packages.sh && /tmp/config/docker/0-install-packages.sh
RUN chmod +x /tmp/config/docker/1-configure-wsl.sh && /tmp/config/docker/1-configure-wsl.sh

RUN rm -rf /tmp/config