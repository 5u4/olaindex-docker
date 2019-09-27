FROM php:7.2-alpine3.9

WORKDIR /opt/OLAINDEX

RUN apk update && apk add composer git
RUN docker-php-ext-install bcmath pdo

RUN git clone https://github.com/WangNingkai/OLAINDEX.git tmp
RUN mv tmp/.git .
RUN rm -rf tmp
RUN git reset --hard
RUN cp database/database.sample.sqlite database/database.sqlite

ENV COMPOSER_ALLOW_SUPERUSER=1
RUN composer install -vvv

CMD php -S 0.0.0.0:8000 -t public
