FROM alpine

RUN apk update && \
    apk add --no-cache nginx nginx-mod-http-fancyindex && \
    rm -rf /var/cache/apk/*

ADD nginx.conf /etc/nginx/nginx.conf
ADD footer.shtml /www/
ADD style.css /www/css/
ADD index.html /www/

CMD ["nginx", "-g", "daemon off;"]