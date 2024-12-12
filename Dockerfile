FROM shinsenter/magento:php8.1-alpine

# Install required packages
RUN apk add curl git mysql-client nano bash coreutils

# Install Composer
RUN curl -s https://getcomposer.org/installer | php
RUN alias composer='php composer.phar'

# Set default environment variables
ENV TZ=Europe/London
ENV ALLOW_RUNTIME_PHP_ENVVARS=1
ENV PHP_MEMORY_LIMIT=6144M

EXPOSE 80