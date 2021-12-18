FROM ubuntu

RUN apt-get -y update && apt-get -y install nginx-full && apt-get install curl -y && apt-get install curl -y && apt-get install sudo -y && apt-get install systemd -y
COPY index.html style.css  /var/www/html/

STOPSIGNAL SIGTERM
CMD ["nginx", "-g", "daemon off;"]
