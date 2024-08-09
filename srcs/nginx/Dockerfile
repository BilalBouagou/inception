FROM debian:bullseye

RUN apt-get update -y && apt-get install -y nginx openssl && mkdir -p /etc/nginx/ssl

RUN openssl req -x509 -newkey rsa:2048 -nodes -out /etc/nginx/ssl/serverCertificate.csr -keyout /etc/nginx/ssl/serverKey.key -subj "/C=MO/ST=TETOUAN/L=TETOUAN/O=1337/CN=bbouagou.42.fr/UID=bbouagou"

COPY ./conf/nginx.conf /etc/nginx/conf.d/nginx.conf

EXPOSE 443/tcp

CMD ["nginx", "-g", "daemon off;"]