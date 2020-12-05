FROM centos:latest
MAINTAINER sowbarnika
RUN yum install -y httpd 
RUN yum install -y unzip
COPY target/hello.war /usr/local/tomcat/webapps/
CMD ["/usr/sbin/httpd", "-D",  "FOREGROUND"]
EXPOSE 80
