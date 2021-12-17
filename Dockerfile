FROM ubuntu:21.04

COPY ./scripts /tmp 

RUN chmod +x /tmp/*.sh

RUN ./tmp/install-deps.sh
RUN ./tmp/install-awscli.sh
RUN ./tmp/install-kubectl.sh
RUN ./tmp/install-terraform.sh
