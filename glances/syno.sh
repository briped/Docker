docker run -detach \
  --name glances \
  --hostname ${HOSTNAME} \
  --env TZ=Europe/Copenhagen \
  --env GLANCES_OPT=--webserver \
  --volume /var/run/docker.sock:/var/run/docker.sock:ro \
  --volume /volume1/docker/glances:/glances \
  --restart unless-stopped \
  nicolargo/glances:latest
