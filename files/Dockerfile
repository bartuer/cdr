FROM caapi/ai:latest

MAINTAINER Bartuer

COPY certs /certs
COPY usr /usr
COPY entry.sh /bin/entry
COPY etc /etc

RUN mkdir -p /home/coder/project

WORKDIR /home/coder/project

EXPOSE 80
EXPOSE 5000
EXPOSE 6379
EXPOSE 8443
EXPOSE 9999

ENTRYPOINT ["/bin/entry"]