#!/bin/bash

cd /var/www/src
composer install
php artisan config:cache
php artisan route:cache
php artisan view:cache

php artisan migrate --force

apache2-foreground
