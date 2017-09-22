#!/bin/sh

cd /home/fanfannnmn/itmd-361
git pull
sudo srm -vzr /var/www/html/itmd-361/
sudo cp -r /home/fanfannnmn/itmd-361 /var/www/html
sudo srm -vzr /var/www/html/itmd-361/.git
