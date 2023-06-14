FROM alpine:3.14

RUN apk update && apk add nginx=1.20.2-r1

COPY    nginx.conf /etc/nginx/nginx.conf
COPY    source/ /usr/share/nginx/html/

RUN rm -rf /var/cache/apk/*
EXPOSE 80
CMD ["nginx", "-g", "daemon off;"]