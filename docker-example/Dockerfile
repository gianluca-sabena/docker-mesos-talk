#
# Minimal Cnetos7 docker image
#  
#

### ### BUILD SECTION ### ###

FROM centos:centos7

MAINTAINER Gianluca Sabena gianluca.sabena@unicredit.eu

# Update OS
RUN yum -y update
RUN mkdir -p /opt/talk
ADD prime.py /opt/talk/
### ### RUNTIME SECTION ### ###

# Run with a shell, can be overridden on startup
CMD /bin/python /opt/talk/prime.py 1000000 1010000

