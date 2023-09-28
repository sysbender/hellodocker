FROM alpine

RUN apk update && apk upgrade
RUN apk add --no-cache --update lighttpd

#WORKDIR /app

#COPY entrypoint.sh .
COPY ./conf/* /etc/lighttpd/
COPY ./html/* /var/www/html/


#RUN chmod +x entrypoint.sh
EXPOSE 80

#ENTRYPOINT [ "/app/entrypoint.sh" ]
CMD ["lighttpd", "-D" , "-f" , "/etc/lighttpd/lighttpd.conf"]

