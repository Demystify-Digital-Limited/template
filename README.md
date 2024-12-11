# Template
A starting point for creating new Magento 2 sites using Docker and Coolify.

# Hosting / Getting Started

## Creating a new site
Make sure that ./src is empty and start the containers. The magento image should automatically install the latest version.  
You'll need to edit env variables and make sure that the database, redis, opensearch and rabbitmq are running before hand.  
Then you can run `bin/install` to setup Magento, and then `bin/cmds` to run the usual commands.

## Migrating a site
Place the entire site file system into the `./src` folder and mount it to the container work directory (`/var/www/html`).  
Make sure to update the environment variables and that Magento can reach the databae, redis, opensearch and rabbitmq before running `bin/cmds`.


# Local Development

## MariaDB Dumping and Restoration

### Dumping
You can connect to the database using DBeaver or SSHing to the machine.

### Restoring
Copy your dump .sql file to the root of the project and make sure its named `./dump.sql`, then you can run the following command to restore the database:

> [!NOTE]
> This only works on UNIX based systems. If you are on windows, use WSL.

```
sudo docker exec -i demo-demystifydigital-db mariadb -uroot -pmagento magento --skip-ssl < dump.sql
```
