FROM tomee:8-jre-7.1.0-microprofile
MAINTAINER Divakar BM <bmdivakar@gmail.com>

#COPY target/demo.war /usr/local/tomcat/webapps/demo.war

RUN apt-get update && apt-get install maven openjdk-8-jdk -y

#RUN echo "export JAVA_OPTS=\"-Dapp.env=staging\"" > /usr/local/tomcat/bin/setenv.sh

RUN export JAVA_HOME=/usr/lib/jvm/java-8-openjdk-amd64/

EXPOSE 8080
CMD ["catalina.sh", "run"]
