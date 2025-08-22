#!/bin/sh


SSL_DIR="/etc/nginx/ssl"
IP_ADDRESS=${IP_ADDRESS}

mkdir -p "$SSL_DIR"

openssl req -x509 -nodes -days 30 -newkey rsa:2048 \
  -keyout "$SSL_DIR/selfsigned.key" \
  -out "$SSL_DIR/selfsigned.crt" \
  -subj "/C=XX/ST=State/L=City/O=Org/CN=$IP_ADDRESS"
