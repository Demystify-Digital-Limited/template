1. Add the following to your `composer.json` file:

```
    "repositories": [
        {
            "type": "composer",
            "url": "https://repo.magento.com/"
        }
    ],
```

2. Copy and paste `auth.json.sample` to `auth.json`:

```
{
    "http-basic": {
        "repo.magento.com": {
            "username": "<public-key>",
            "password": "<private-key>"
        }
    }
}
```

3. Go to https://commercemarketplace.adobe.com/customer/accessKeys/ and get access keys and add them to `auth.json`:

```
{
    "http-basic": {
        "repo.magento.com": {
            "username": "public",
            "password": "private"
        }
    }
}
```

4. Run `bin/composer update`

5. Make sure the site is in developer mode using the following command: `bin/magento deploy:mode:set developer`
