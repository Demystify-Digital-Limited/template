FROM shinsenter/magento:php8.1-alpine

# Deliberately not copying the src and bin files since they are host dependent during development
# ADD --chown=$APP_USER:$APP_GROUP ./src/ /var/www/html/
# ADD --chown=$APP_USER:$APP_GROUP ./bin/ /var/www/html/bin/

# Install required packages
RUN apk add curl git mysql-client nano bash coreutils

# Install Composer
RUN curl -s https://getcomposer.org/installer | php
RUN alias composer='php composer.phar'

# Make all the bin commands are executable
RUN cd ./bin && chmod +x *

# Set default environment variables
ENV TZ=Europe/London
ENV ALLOW_RUNTIME_PHP_ENVVARS=1
ENV PHP_MEMORY_LIMIT=6144M

EXPOSE 80