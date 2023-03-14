FROM centos:latest
MAINTAINER adarsh.a@censanext.com
RUN yum install -y httpd \
 zip\
 unzip
ADD https://www.free-css.com/asset/files/free-css-templates/download/page254/photogenic.zip /var/www/html/
WORKDIR /var/www/html/
RUN unzip photogenic.zip
RUN cp -rvf photogenic/* .
RUN rm -rf photogenic photogenic.zip
CMD ["/usr/sbin/httpd", "D", "FOREGROUND"]
EXPOSE 80