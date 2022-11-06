FROM alpine:3.16

RUN apk update
RUN apk add vim && \
	apk add nginx && \
	apk add openssl; \
	mkdir -p /etc/nginx/ssl
RUN 