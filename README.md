# Template

A starting point for creating new Magento 2 sites using Docker and Coolify.

# Hosting / Getting Started

Check the [documentation](https://github.com/Demystify-Digital-Limited/documentation) repo for more information on how to setup a new site, migrate one to the new setup, and more.

# Local Development

## MariaDB Dumping and Restoration

### Dumping

You can connect to the database using DBeaver or SSHing to the machine.

### Restoring

Copy your dump .sql file to the root of the project and make sure its named `./dump.sql`, then you can run the following command to restore the database:

> [!NOTE]
> This only works on UNIX based systems. If you are on windows, use WSL.

```
sudo docker exec -i sub-domain-db mariadb -uroot -pmagento magento --skip-ssl < dump.sql
```
