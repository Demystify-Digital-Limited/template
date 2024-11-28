# template
A starting point for creating new Magento 2 sites using Docker.

# Making sure a site is running
1. Ensure that the composer packages are installed and up to date:
```
composer install
composer update
```

2. Run the following to upgrade Magento, ensure packages are installed, etc:
```
bin/magento setup:upgrade
```

# MariaDB Dumping and Restoration

## Dumping
You can connect to the database using DBeaver or SSHing to the machine.

## Restoring
Copy your dump .sql file to the root of the project and make sure its named `./dump.sql`, then you can run the following command to restore the database:

> [!NOTE]
> This only works on UNIX based systems. If you are on windows, use WSL.

```
sudo docker exec -i ecommerce-demystifydigital-db mariadb -uroot -pmagento magento --skip-ssl < dump.sql
```
