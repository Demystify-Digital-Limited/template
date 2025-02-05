1. Open the Search tab on the left side of VSCode and search for `sub-domain`, then replace `sub` and `domain` with your sub-domain and domain.
    - For example: If I were hosting on the domain, www.loveyourlogo.com, then I would use `www-loveyourlogo`.
2. Run `docker compose up -d` to start containers.
3. Open `lazydocker` and find the container that ends in `-app`, then hold SHIFT and press `E`.
4. You should see a terminal appear, this means that you are currently interacting with the Magento container shell.
5. Run `../bin/download` and confirm both warnings.
6. Once Magneto has been downloaded, run `bin/install` to install.

    > [!NOTE]
    > If you recieve any errors, it is most likely a faulty `all.env` file. Please double check the file and make sure it's values are correct.

7. Once Magento has been installed, run `bin/cmds` to run the common Magneto commands.
8. Your magento site is running, however, it's using HTTPS by default. First we need to define the local environmental varibles for Magento.
9. Copy and paste the file `src/app/etc/env.php` and paste it in the same directory with the name `env-local.php`.
10. Repeat step 9 but name the file for `env-prod.php`. This file will be used to host sites on Coolify.
11. Make sure to fill in the values with the correct information otherwise you will run into issues.
12. Finally, run `bin/local` and enable local mode to view your Magento store locally.
13. Go to http://localhost:3000
