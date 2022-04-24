FROM ubuntu:21.04

LABEL org.opencontainers.image.source https://github.com/mathisve/aiosre
LABEL org.opencontainers.image.description All In One SRE Docker Container

COPY ./scripts /tmp 

RUN chmod +x /tmp/*.sh

RUN ./tmp/install-deps.sh
RUN ./tmp/install-awscli.sh
RUN ./tmp/install-kubectl.sh
RUN ./tmp/install-terraform.sh
RUN ./tmp/install-helm.sh
