FROM centos:latest
MAINTAINER adarsh.a@censanext.com

RUN cd /etc/yum.repos.d/
RUN sed -i 's/mirrorlist/#mirrorlist/g' /etc/yum.repos.d/CentOS-*
RUN sed -i 's|#baseurl=http://mirror.centos.org|baseurl=http://vault.centos.org|g' /etc/yum.repos.d/CentOS-*

RUN yum install -y httpd \
 zip\
 unzip
CMD ["/usr/sbin/httpd", "D", "FOREGROUND"]
EXPOSE 80 22