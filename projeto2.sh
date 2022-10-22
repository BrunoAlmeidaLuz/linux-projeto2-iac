#!/bin/bash

echo "Iniciando a atualização do servidor"

apt update
apt upgrade -y

echo "Atualização de servidor finalizada!"

echo "Iniciando o download do apache2"

apt install apache2 -y

echo "Finalizada instalação do apache2"

echo "Iniciando instalação do unzip"

apt install unzip -y

echo "Instalação do unzip finalizada"

echo "Baixando a aplicação"

cd /
cd tmp
wget https://github.com/denilsonbonatti/linux-site-dio/archive/refs/heads/main.zip

echo "Aplicação baixada"

echo "Descompactando a aplicação"

unzip main.zip

echo "Descompactação finalizada"

echo "Copiando a aplicação para a pasta do apache"

cp /tmp/linux-site-dio-main/* /var/www/html -r

echo "Fim da cópia da aplicação"

echo "PROCESSO FINALIZADO!!"


