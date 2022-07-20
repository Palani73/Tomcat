FROM centos:latest
RUN yum install java -y
RUN mkdir /opt/tomcat
WORKDIR /opt/tomcat
ADD https://dlcdn.apache.org/tomcat/tomcat-10/v10.0.22/bin/apache-tomcat-10.0.22.tar.gz .
RUN tar -xvzf apache-tomcat-10.0.22.tar.gz
RUN mv apache-tomcat-10.0.22.tar/* /opt/tomcat
EXPOSE 8080
CMD ["/opt/tomcat/bin/catalina.sh", "run"]
