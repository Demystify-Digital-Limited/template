# Windows (WSL)

Before you begin, you will need to setup Docker and WSL to work together. Make sure you have [DBeaver](https://dbeaver.io/) and [Git](https://git-scm.com/) installed.

> [!IMPORTANT]
> If you have previously ran through the "Setting up WSL and Docker Desktop" section, you do not need to run them again.

## Setting up WSL and Docker Desktop

1. Download Docker Desktop and restart your computer.
2. Open a terminal and run `wsl --update` to make sure your WSL version is up to date.
3. Open the Microsoft Store and download the [Debian](https://apps.microsoft.com/detail/9MSVKQC78PK6?hl=en-us&gl=GB&ocid=pdpshare).
4. Once it's downloaded, open Debian. It may ask you to set a UNIX username and password.
5. Run the following commands to install required packages: `sudo apt update ; sudo apt upgrade -y ; sudo apt install curl git git-lfs ; git lfs install`
6. Make sure your Git SCM is up to date on Windows and run `git config --global credential.helper "/mnt/c/Program\ Files/Git/mingw64/bin/git-credential-manager.exe"` to connect git on WSL to your Git Credential Manager on Windows.
7. Run the following command to install `lazydocker`: `bash <(curl -sL https://gist.githubusercontent.com/tygrdotdev/a3174057f76bc184d93e4d4eafb2ce6f/raw/1a0f78c7b7c2328ea5f89df8a688a50cbf8ca726/lazydocker.sh)`
8. Open Docker Desktop, click on the cog wheel at the top, click on "Resources" and "WSL Intergration" and check Debian and click `Apply and restart`.

## Starting the site locally

7. Back in Debian, clone the Git repo with: `git clone <REPO_URL>`. If you are running this command after setting up WSL and Docker Desktop, it may ask you to login.
8. `cd` into the repo, and run `docker compose up -d`.
9. Run the following command to fix permissions with the opensearch container: `sudo chown -R 1000:1000 ./.docker/opensearchdata`
10. Run `lazydocker`
11. Select the container that ends with `-opensearch`, hold SHIFT and press `e`.
12. If the site you are hosting has elasticsuite installed, run `./bin/opensearch-plugin install analysis-phonetic`, then `exit` and while the container is selected, press `r` to restart it.
13. Open DBeaver and connect to the local database, the credentials are below:

```
Host: localhost
Port: 3306
Database: magento
Username: magento
Password: magento
Driver: MariaDB
```

14. Once you're connected, open Databases and find the database called `magento`. Right click it and go to `Tools > Restore Database`.

15. On the new window that pops up, select the folder icon next to the `input` text box.

16. In the new explorer window that appears, type `\\wsl.localhost\Debian` into the address bar to navigate to the root of your Debian instance. From there, find where you cloned the site repo and select the `dump.sql` file.

17. Click `Start` and confirm the warning.

> If the operation fails, delete the database, create it, and retry.

18. Once the restore has finished, close DBeaver and go back to lazydocker.

19. Select the container that ends with `-app`, hold SHIFT and press `e`. 7. Run `bin/composer update`, then `bin/cmds`.

20. Then run `bin/local` and enable local mode. Wait for the process to complete, then navigate to http://localhost:3000 to view the site.

# Unix (Linux / MacOS)

1. Make sure to have [Docker Desktop](https://www.docker.com/products/docker-desktop/), [DBeaver](https://dbeaver.io/) and [lazydocker](https://github.com/jesseduffield/lazydocker) installed on your system.
2. Open a terminal in the root of the project and run `docker compose up -d`
3. Run `lazydocker`
4. Select the container that ends with `-opensearch`, hold SHIFT and press `e`.
5. If the site you are hosting has elasticsuite installed, run `./bin/opensearch-plugin install analysis-phonetic`, then `exit` and while the container is selected, press `r` to restart it.
6. Open DBeaver and connect to the local database, the credentials are below:

```
Host: localhost
Port: 3306
Database: magento
Username: magento
Password: magento
Driver: MariaDB
```

7.  Once you're connected, open Databases and find the database called `magento`. Right click it and go to `Tools > Restore Database`.

8.  On the new window that pops up, select the folder icon next to the `input` text box and select the `dump.sql` file in the root of this project.

9.  Click `Start` and confirm the warning.

> If the operation fails, delete the database, create it, and retry.

10. Once the restore has finished, close DBeaver and go back to lazydocker.

11. Select the container that ends with `-app`, hold SHIFT and press `e`. 7. Run `bin/composer update`, then `bin/cmds`.
12. Then run `bin/local` and enable local mode. Wait for the process to complete, then navigate to http://localhost:3000 to view the site.
