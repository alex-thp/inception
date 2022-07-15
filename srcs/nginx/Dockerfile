FROM debian:buster

RUN apt-get update
RUN apt-get install nginx -y
RUN apt-get install openssl -y
EXPOSE 443

RUN openssl req -nodes -x509 -days 365 -new -keyout ./etc/nginx/certificate.key -out ./etc/nginx/certificate.crt -subj "/C=FR/ST=Paris/L=Clichy/O=42/CN=ade-temm.42.fr"
#RUN rm /etc/nginx/sites-enabled/default

COPY default /etc/nginx/sites-enabled/
#RUN service nginx start
RUN adduser nginx
RUN addgroup nginxg
RUN chown nginx /var/www/html


CMD ["nginx", "-g", "daemon off;"]
