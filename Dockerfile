FROM alpine:3.13

RUN apk update && \
    apk add --no-cache nginx nginx-mod-http-fancyindex tzdata && \
    rm -rf /var/cache/apk/*

ADD nginx.conf /etc/nginx/nginx.conf
ADD footer.shtml /www/
ADD style.css /www/css/
ADD index.html /www/

ADD cert.* /opt/certs/

CMD ["nginx", "-g", "daemon off;"]