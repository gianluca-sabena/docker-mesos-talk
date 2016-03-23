#
# Minimal Cnetos7 docker image
#
#

### ### BUILD SECTION ### ###

FROM centos:centos7

MAINTAINER Gianluca Sabena gianluca.sabena@unicredit.eu


# Update OS
RUN yum -y update

# Create user
RUN useradd docker -c 'docker user' -s /usr/sbin/nologin -m
RUN mkdir -p /opt/talk
RUN chown docker:docker /opt/talk
USER docker

# Add application

ADD prime.py /opt/talk/
### ### RUNTIME SECTION ### ###


# Run with a shell, can be overridden on startup
CMD /bin/python /opt/talk/prime.py 1000000 1010000
