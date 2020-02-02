FROM ubuntu:bionic

ENV INSTALL_KEY 379CE192D401AB61

RUN apt-get update && apt-get install -y gnupg1 apt-transport-https dirmngr ca-certificates
RUN apt-key adv --keyserver keyserver.ubuntu.com --recv-keys $INSTALL_KEY
RUN echo "deb https://ookla.bintray.com/debian bionic main" | tee /etc/apt/sources.list.d/speedtest.list
RUN apt-get update && apt-get install speedtest

ENTRYPOINT [ "speedtest" ]