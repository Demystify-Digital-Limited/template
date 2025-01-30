1. Run `docker compose up -d` to start containers.
2. Once all services are running, run `bin/cmds` to run the common Magneto commands.
3. Open `lazydocker` and find the container that ends in `-app`, then hold SHIFT and press `E`.
4. You should see a terminal appear, this means that you are currently interacting with the Magento container shell.
5. Your magento site is running, however, it's using HTTPS by default. To access Magento on HTTP, run `bin/local` and enable it.
6. Go to http://localhost:3000
