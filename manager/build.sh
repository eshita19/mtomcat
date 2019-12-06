docker container rm -f tomcat-manager-ex
docker image rm -f tomcat-manager-ex:latest
docker build -t tomcat-manager-ex:latest .
docker container run -d --name tomcat-manager-ex -p 8080:8080 tomcat-manager-ex:latest
