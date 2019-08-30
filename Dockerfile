FROM tomcat:slim
MAINTAINER Divakar BM <bmdivakar@gmail.com>

#RUN echo "export JAVA_OPTS=\"-Dapp.env=staging\"" > /usr/local/tomcat/bin/setenv.sh
#COPY target/demo.war /usr/local/tomcat/webapps/demo.war

RUN apt update && apt add maven

EXPOSE 8080
CMD ["catalina.sh", "run"]
