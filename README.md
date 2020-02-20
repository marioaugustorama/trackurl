# trackurl
Execução:

# build
docker build -t marionunes/trackurl:1.0 .

# Execução
docker run -d --name trackurl marionunes/trackurl:1.0

# Endereço de acesso
docker logs -f trackurl 

# Monitorar o log
docker exec -it trackurl tail -f /var/log/nginx/access.log


Este container usa parte do código disponibilizado por https://github.com/cryptomarauder/TrackUrl
