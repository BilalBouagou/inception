FROM debian:bullseye

EXPOSE 9000

RUN apt-get update -y && apt-get install -y curl php php7.4-fpm php-mysql mariadb-client

COPY ./conf/wp_conf.sh /

RUN  chmod +x wp_conf.sh

ENTRYPOINT ["./wp_conf.sh"]