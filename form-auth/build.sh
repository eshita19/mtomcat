mvn clean install -DskipTests
mv target/form-auth-1.0.war target/form-auth.war

docker container rm --force $(docker container ls -aq)
docker image rm --force $(docker image ls -aq)

docker-compose down
docker-compose up

#SQL script
docker exec msql /bin/sh -c 'mysql -u root -p July2020! < ./startup.sql'

