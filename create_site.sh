#!/bin/sh
set -e

echo "trying to create additional site ..."
read -p "Enter default site domain (ex. docker.di-house.ru)" domain

echo "trying to copy NGINX CONF to NGINX work directory ..."
cp /var/www/bitrixdock/nginx/conf/DOMAIN_NAME.conf.template /var/www/bitrixdock/nginx/conf/sites/$domain.conf

echo "trying to create NGINX Conf ..."
sed -i "s/DOMAIN_NAME/$domain/" /var/www/bitrixdock/nginx/conf/sites/$domain.conf
sed -i "s/www.DOMAIN_NAME/$domain/" /var/www/bitrixdock/nginx/conf/sites/$domain.conf


echo "DONE!"