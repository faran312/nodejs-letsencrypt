## Overview
This app is purpose to manage your Let's Encrypt SSL certificates. It makes a container to provide a challenge that certbot generates

## How To Use
*   Clone this repository
*   Run `docker-compose build`.
*   And run `docker-compose up -d`.

If you want to generate new SSL certificates :
*   Run `docker exec -it nodejs-letsencrypt ./tools/gen-ssl.sh` and follow the instructions

To renew your certificates :
*   Run `docker exec -it nodejs-letsencrypt ./tools/renew-ssl.sh`
