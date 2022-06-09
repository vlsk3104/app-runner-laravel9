#!/bin/bash

cd /var/www/src
composer install --optimize-autoloader
php artisan config:cache
php artisan route:cache
php artisan view:cache

php artisan migrate

apache2-foreground
