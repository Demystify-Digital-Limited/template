FROM demystifydigitalltd/magento:php8.1-alpine

ENV TZ=Europe/London
ENV ALLOW_RUNTIME_PHP_ENVVARS=1
ENV PHP_MEMORY_LIMIT=6144M

EXPOSE 80