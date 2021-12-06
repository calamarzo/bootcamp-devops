EJERCICIO 1 (publicando todos los puertos, los build en local de cada directorio)
docker network create lemoncode-challenge
docker volume create db_data
docker run -dit --name some-mongo --mount source=db_data,target=/data/db --network lemoncode-challenge -p 27017:27017 mongo
docker build -t topics-api:prod .
docker run -dit --name topics-api --network lemoncode-challenge -p 5000:5000 mongo topics-api:prod
docker build -t frontend:prod .
docker run -dit --name frontend --network lemoncode-challenge -p 8080:3000 mongo frontend:prod

EJERCICIO 2
No entiendo porque hay que publicar la API, si es servicio interno, prefiero no publicarla y que se quede en la red "interna"

commands

docker-compose --project-name lemoncode-challenge up --build -d
docker-compose --project-name lemoncode-challenge stop
docker-compose --project-name lemoncode-challenge restart


docker rm $(docker container ls -aq -f name=^lemoncode-challenge)
docker volume rm $(docker volume ls --format "{{.Name}}" -f name=^lemoncode-challenge)
docker network rm $(docker network ls --format "{{.Name}}" -f name=^lemoncode-challenge)
