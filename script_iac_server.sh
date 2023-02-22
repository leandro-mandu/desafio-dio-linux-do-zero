#!/bin/bash

#atualizar servidor
apt-get update
apt-get upgrade -y
#baixar apache2
apt-get install apache2 -y
#baixar unzip
apt-get install unzip -y
#baixar site zip na /tmp
cd /tmp
wget https://github.com/denilsonbonatti/linux-site-dio/archive/refs/heads/main.zip
unzip main.zip
#provisionar site no server
cp -R linux-site-dio-main/* /var/www/html/

