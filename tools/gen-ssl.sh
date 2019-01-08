#! /bin/bash

# using trap
trap "exit" 0 2 15

# Declare variable for configuration
letsencryptInstallPath=/etc/letsencrypt
letsencryptLibPath=/var/lib/letsencrypt
letsencryptDataPath=/apps/dependencies/nginx/data/ssl-challenge
letsencryptLogPath=/var/log/letsencrypt
certPath=/apps/dependencies/nginx/config/certs
domain=()

# Get user input
read -p "Type your email : "
email=$REPLY
read -p "Type host (seperate with space for multiple hosts) : "
hosts=$REPLY

# get domain list
for i in $hosts
do
  domain+=('-d')
  domain+=($i)
done

# Generate cert for domain
$MAIN_DIR/certbot-auto \
certonly --webroot \
--email $email --agree-tos --no-eff-email \
--webroot-path=$PATH_NAME \
${domain[@]}

echo "Process completed"