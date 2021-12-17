FROM ubuntu

RUN apt-get -y update && apt-get -y install nginx-full && apt-get install curl -y && apt-get install curl -y
CMD mkdir sites && cd sites && mkdir demo
COPY index.html style.css  /sites/demo/

STOPSIGNAL SIGTERM
CMD ["nginx", "-g", "daemon off;"]
