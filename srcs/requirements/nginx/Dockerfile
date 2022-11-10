FROM alpine:3.16

RUN apk update && apk add nginx && apk add openssl --no-cache
RUN openssl req -newkey rsa:2048 \
	-nodes \
	-keyout /etc/ssl/private/kmeixner.key \
	-x509 \
	-days 365 \
	-out /etc/ssl/certs/kmeixner.crt \
	-subj "/C=DE/ST=Niedersachsen/L=Wolfsburg/O=42Wolfsburg/OU=Students/CN=kmeixner.42.fr"

COPY conf/nginx.conf etc/nginx
COPY conf/nginx.conf etc/conf.d/default.conf

EXPOSE 443

CMD ["nginx", "-g", "daemon off;"]