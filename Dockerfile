FROM alpine:3.12

RUN apk add --no-cache \
    php7-fpm \
    php7-bcmath \
    php7-ctype \
    php7-fileinfo \
    php7-json \
    php7-mbstring \
    php7-openssl \
    php7-pdo \
    php7-tokenizer \
    php7-xml

EXPOSE 9000

ENTRYPOINT ["php-fpm7"]

CMD ["-F"]