FROM shinsenter/magento:php8.1

ADD --chown=$APP_USER:$APP_GROUP ./src/ /var/www/html/

ENV TZ=Europe/London
ENV ALLOW_RUNTIME_PHP_ENVVARS=1

# Install MySQL Client
RUN apt install default-mysql-client -y

EXPOSE 80