FROM phusion/baseimage:latest
ENV DEBIAN_FRONTEND noninteractive

# Configure user nobody to match unRAID's settings
#RUN usermod -u 99 nobody 
#RUN usermod -g 100 nobody 
#RUN usermod -d /home nobody 
#RUN chown -R nobody:users /home

# Install apps
RUN apt-get update -q
RUN apt-get install -qy python-dev 
RUN apt-get install -qy git-core 
RUN apt-get install -qy python-virtualenv 
RUN apt-get install -qy g++
RUN cd /home
RUN git clone https://github.com/mozilla-services/syncserver
RUN cd syncserver


