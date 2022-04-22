#!/bin/sh
set -e

echo "trying to set main default site..."
read -p "Enter default site domain (ex. docker.di-house.ru)" domain
sed -i "s/MAIN_DOMAIN_NAME/$domain/" /var/www/bitrixdock/nginx/conf/default.conf

echo "DONE!"