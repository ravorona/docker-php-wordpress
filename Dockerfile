FROM wordpress:php8.2-apache

RUN set -eux; \
    # Change default DocumentRoot /var/www/html into /var/www/web
    sed -i -e 's/html/web/g' /etc/apache2/sites-available/000-default.conf

VOLUME /var/www
