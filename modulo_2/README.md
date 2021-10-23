No entiendo porque hay que publicar la API, si es servicio interno, prefiero no publicarla y que se quede en la red "interna"

commands

docker-compose --project-name lemoncode-challenge up --build -d
docker-compose --project-name lemoncode-challenge stop
docker-compose --project-name lemoncode-challenge restart


docker rm $(docker container ls -aq -f name=^lemoncode-challenge)
docker volume rm $(docker volume ls --format "{{.Name}}" -f name=^lemoncode-challenge)
docker network rm $(docker network ls --format "{{.Name}}" -f name=^lemoncode-challenge)
