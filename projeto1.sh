#!/bin/bash

echo "Iniciando a criação de diretorios"

mkdir publico
mkdir adm
mkdir ven
mkdir sec

echo "Criação de diretórios finalizada!"

echo "Iniciando a criação dos grupos de usuários"

groupadd GRP_ADM
groupadd GRP_VEN
groupadd GRP_SEC

echo "Criação dos grupos finalizada"

echo "Iniciando a criação dos usuarios"

useradd carlos -c "Carlos" -s /bin/bash -m -p $(openssl passwd -6 123)
passwd carlos -e

useradd maria -c "Maria" -s /bin/bash -m -p $(openssl passwd -6 123)
passwd maria -e

useradd joao -c "Joao" -s /bin/bash -m -p $(openssl passwd -6 123)
passwd joao -e

useradd debora -c "Debora" -s /bin/bash -m -p $(openssl passwd -6 123)
passwd debora -e

useradd sebastiana -c "Sebastiana" -s /bin/bash -m -p $(openssl passwd -6 123)
passwd sebastiana -e

useradd roberto -c "Roberto" -s /bin/bash -m -p $(openssl passwd -6 123)
passwd roberto -e

useradd josefina -c "Josefina" -s /bin/bash -m -p $(openssl passwd -6 123)
passwd josefina -e

useradd amanda -c "Amanda" -s /bin/bash -m -p $(openssl passwd -6 123)
passwd amanda -e

useradd rogerio -c "Rogerio" -s /bin/bash -m -p $(openssl passwd -6 123)
passwd rogerio -e

echo "Criação de usuários finalizada!"

echo "Atribuindo os usuários aos grupos"

usermod -G GRP_ADM carlos
usermod -G GRP_ADM maria
usermod -G GRP_ADM joao
usermod -G GRP_VEN debora
usermod -G GRP_VEN sebastiana
usermod -G GRP_VEN roberto
usermod -G GRP_SEC josefina
usermod -G GRP_SEC amanda
usermod -G GRP_SEC rogerio

echo "Usuários atribuídos aos grupos!"

echo "Alterando donos dos diretórios..."

chown root:GRP_ADM /adm
chown root:GRP_VEN /ven
chown root:GRP_SEC /sec

echo "Donos atribuídos!"

echo "Iniciando a criação das regras de usuários e grupos"

chmod 777 /publico
chmod 770 /adm
chmod 770 /ven
chmod 770 /sec

echo "Regras de usuários e grupos criadas!"

echo "Script finalizado!!"
