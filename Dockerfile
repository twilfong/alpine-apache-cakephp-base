FROM twilfong/alpine-apache-php-composer
LABEL maintainer="tim@wilfong.me"
EXPOSE 80/tcp

# Install php extensions for CakePHP and modify DocumentRoot
RUN apk add --no-cache php81-dom php81-intl php81-pdo php81-pdo_mysql \
      php81-pdo_sqlite php81-session php81-simplexml php81-tokenizer \
      php81-xml php81-xmlwriter \
    && sed -i '/ScriptAlias..cgi-bin....var.www.localhost/d' /etc/apache2/httpd.conf

# overwrite entry script to add CAKE_APP_DIR substitution
ADD docker-entrypoint.sh /
