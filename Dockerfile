FROM  centos:latest
MAINTAINER vikashashoke@gmail.com
RUN yum update -y && \
RUN    yum install -y httpd zip unzip

RUN yum install -y httpd \
 zip\
 unzip
EXPOSE 80 22