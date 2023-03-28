FROM  centos:latest
MAINTAINER vikashashoke@gmail.com
RUN yum update -y && \
RUN    yum install -y httpd zip unzip

RUN yum install -y httpd \
 zip\
 unzip
WORKDIR /var/www/html/
RUN unzip photogenic.zip
RUN cp -rvf photogenic/* .
RUN rm -rf photogenic photogenic.zip
CMD ["/usr/sbin/httpd", "-D", "FOREGROUND"]
EXPOSE 80 22