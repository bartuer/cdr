FROM caapi/ai:latest

MAINTAINER Bartuer

COPY etc /etc
COPY certs /certs
COPY usr /usr
COPY src /src
COPY entry.sh /bin/entry


RUN mkdir -p /home/coder/project

EXPOSE 80
EXPOSE 5000
EXPOSE 6379
EXPOSE 8443
EXPOSE 9999

ENTRYPOINT ["/bin/entry"]