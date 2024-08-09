# the underlying OS arch that will be used to build this image
FROM debian:bullseye

EXPOSE 3306

# installing the required packages
RUN apt-get update -y && apt-get install mariadb-server -y

COPY ./conf/mdb-conf.sh /

RUN chmod +x /mdb-conf.sh

ENTRYPOINT ["./mdb-conf.sh"]