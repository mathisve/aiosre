FROM ubuntu:21.04

LABEL org.opencontainers.image.source https://github.com/mathisve/aiosre

COPY ./scripts /tmp 

RUN chmod +x /tmp/*.sh

RUN ./tmp/install-deps.sh
RUN ./tmp/install-awscli.sh
RUN ./tmp/install-kubectl.sh
RUN ./tmp/install-terraform.sh
