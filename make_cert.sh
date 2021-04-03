#!/usr/bin/env sh

set -e

openssl ecparam -name prime256v1 -genkey -out cert.key && \
openssl req -key cert.key -new -subj /C="CN"/ST="GuangDong"/L="ShenZhen" -out cert.req && \
openssl x509 -req -in cert.req -signkey cert.key -days 5475 -out cert.pem && \
rm -f cert.req