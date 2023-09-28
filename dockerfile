FROM alpine

RUN apk update --no-cache  && apk upgrade  --no-cache  && apk add --no-cache --update lighttpd

COPY ./web/conf/* /etc/lighttpd/
COPY ./web/html/* /var/www/html/

EXPOSE 80

CMD ["lighttpd", "-D" , "-f" , "/etc/lighttpd/lighttpd.conf"]

