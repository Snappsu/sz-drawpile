![sniddy.zone drawpile label](https://cdn.snapps.dev/sniddy-zone/img/sniddy-zone-drawpile-label.png)
# sniddy.zone drawpile configuration
hello! if you ever wanted to run sniddy.zone's drawpile setup, here you go i guess?
it's built off of [drawpile's all-in-one docker package](https://github.com/drawpile/dpserver/tree/master) but with a few tweaks
## setup
### installation (draft)
[i haven't actually tried to install it from nothing yet hehe]

1. clone this repo to desired location
2. run `updateWebAdmin.sh` in `/setup` to install the web admin portal
3. run `setAdminPassword.sh` in `/setup` to setup password for web admin portal
4. run `sudo docker compose up -d`
### drawpile configuration
#### [startup config](https://docs.drawpile.net/help/server/serverconfig#startup-configuration)
configured via the docker compose
#### [runtime config](https://docs.drawpile.net/help/server/serverconfig#runtime-configuration)
configuration can be done via manipulation of `server-data/config.db`

things to do: 
- if using ext-auth, set the [validation key](https://docs.drawpile.net/help/server/serverconfig#external-authentication-validation-key)
### `.env` file
- `DOMAIN`: the domain of the stack
- `USE_CERTBOT`: yes or no
- `EMAIL`: email for... something important im sure
- `DISCORD_WEBHOOK`: for the abuse report thingy
- `SITE_GIT`: .git for the webpage of the server
- `SITE_GIT_BRANCH`: branch for said git
