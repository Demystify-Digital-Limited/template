## Destroying a site

There are two different types of "destroying" a site. If you were in the process of setting a site up and want to nuke all changes, run the following:

1. `docker compose down`
2. Delete `./src` and `./.docker`

This will delete the entire site (located in `./src`) and the services data (located in `./.docker`).

...however, if you want to reset your changes on an existing site, run the following:

> [!CAUTION]  
> This command will destroy ALL of your local changes. You have been warned!

1. `git reset --hard HEAD && git clean -fd`
