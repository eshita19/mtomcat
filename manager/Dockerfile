FROM tomcat:7
COPY tomcat-users.xml $CATALINA_HOME/conf
COPY server.xml $CATALINA_HOME/conf
COPY demokey.jks .
RUN apt-get update && apt-get install -y vim
