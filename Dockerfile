FROM centos:latest

MAINTAINER Nravi

RUN apt-get install -y nodejs && apt-get install -y npm

COPY index.html /var/www/html/

CMD [“/usr/sbin/httpd”, “-D”, “FOREGROUND”]

EXPOSE 80
