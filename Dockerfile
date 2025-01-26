FROM shinsenter/magento:php8.1

# Install required packages
RUN apt update && apt upgrade -y
RUN apt install curl git nano bash coreutils cron

# Install Composer
RUN curl -s https://getcomposer.org/installer | php
RUN alias composer='php composer.phar'

# Set default environment variables
ENV TZ=Europe/London
ENV ALLOW_RUNTIME_PHP_ENVVARS=1
ENV PHP_MEMORY_LIMIT=6144M

RUN crontab -l | { cat; echo "* * * * * /usr/local/bin/php /var/www/html/bin/magento cron:run"; } | crontab -

EXPOSE 80