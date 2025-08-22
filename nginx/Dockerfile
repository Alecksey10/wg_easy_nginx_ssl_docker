FROM nginx:alpine

RUN apk add --no-cache openssl busybox-suid

COPY nginx.conf /etc/nginx/nginx.conf
COPY ./scripts/generate-cert.sh /generate-cert.sh
COPY startup.sh /startup.sh

RUN chmod +x /generate-cert.sh /startup.sh

ENTRYPOINT ["/bin/sh", "/startup.sh"]
