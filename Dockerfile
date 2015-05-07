from ubuntu:14.04.2

RUN apt-get update
RUN apt-get install -y python-software-properties
RUN curl -sL https://deb.nodesource.com/setup | sudo bash -
RUN apt-get update
RUN sudo apt-get install -y nodejs npm git
RUN ln -s /usr/bin/nodejs /usr/bin/node
RUN npm install -g coffee-script
ADD start.sh /usr/local/bin/start.sh
VOLUME /opt/hubot

ENTRYPOINT /usr/local/bin/start.sh
