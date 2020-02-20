FROM debian:latest
LABEL mainteiner="Mário Nunes"
RUN apt-get update && apt-get upgrade -y
RUN apt-get install nginx unzip curl jq -y
COPY start.sh /usr/local/bin
COPY index.html /var/www/html/index.html
RUN chmod 755 /usr/local/bin/start.sh
ADD https://bin.equinox.io/c/4VmDzA7iaHb/ngrok-stable-linux-amd64.zip /tmp
RUN unzip /tmp/ngrok-stable-linux-amd64.zip && mv ngrok /usr/local/bin
EXPOSE 80
STOPSIGNAL SIGTERM

CMD ["/usr/local/bin/start.sh"]
    
