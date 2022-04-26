#!/bin/sh
set -e

echo "trying to create additional site ..."
read -p "Enter default site domain (ex. docker.di-house.ru) " domain

echo "trying to copy NGINX CONF to NGINX work directory ..."
cp /home/www/bitrixdock/nginx/conf/DOMAIN_NAME.conf.template /home/www/bitrixdock/nginx/conf/sites/$domain.conf

echo "trying to create NGINX Conf ..."
sed -i "s/DOMAIN_NAME/$domain/" /home/www/bitrixdock/nginx/conf/sites/$domain.conf
sed -i "s/www.DOMAIN_NAME/www.$domain/" /home/www/bitrixdock/nginx/conf/sites/$domain.conf

mkdir /home/www/sites/$domain
chmod -R 775 /home/www/sites/$domain && chown -R root:www-data /home/www/sites/$domain && \
cd /home/www/sites/$domain
wget https://www.1c-bitrix.ru/download/scripts/bitrixsetup.php

echo "DONE!"