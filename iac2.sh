#!/bin/bash

echo "Atualizando o servidor"
apt-get update
apt-get upgrade -y

echo "Instalando Apache2 e Unzip"
apt-get install apache2 -y
apt-get install unzip -y

echo "Copiando aplicação e descompactando-a em .../html"
cd /tmp
wget https://github.com/denilsonbonatti/linux-site-dio/archive/refs/heads/main.zip
unzip main.zip

cd linux-site-dio-main
cp -R * /var/www/html/
