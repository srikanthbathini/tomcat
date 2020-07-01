FROM centos:latest

MAINTAINER srikanth Bathini

RUN yum update -y

RUN yum install java-1.8.0-openjdk -y

COPY ./softwares/apa* /opt/

RUN tar -xvf /opt/apa* 

RUN chmod -R 777 /opt/

COPY target/*.war /apache-tomcat-8.5.56/webapps

EXPOSE 8080

CMD /apache-tomcat-8.5.56/bin/catalina.sh run

 
