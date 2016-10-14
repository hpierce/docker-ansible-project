#!/bin/bash
cp /var/www/php-mysql-app/*.php /var/www/html
cd /var/www/test_db
mysql -pp@ssw0rd < employees.sql
