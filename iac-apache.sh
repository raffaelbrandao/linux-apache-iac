#!/bin/bash

echo "Inicio"
echo "Atualizando servidor"

apt-get update
apt-get upgrate -y
apt-get install apache2 -y
apt-get install unzip -y

echo "Baixando arquivos da aplicação"

cd /tmp
wget https://github.com/denilsonbonatti/linux-site-dio/refs/heads/main.zip

echo "Descompactando e copiando arquivos da aplicação"

unzip main.zip
cd linux-site-dio-main
cp -R * /var/www/html

echo "Fim"