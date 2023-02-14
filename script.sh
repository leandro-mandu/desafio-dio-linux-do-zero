#!/bin/bash

#logar como root
#definir senha do root


cd /home
rm -rf *

userdel -f carlos
userdel -f maria
userdel -f joao
userdel -f debora
userdel -f sebastiana
userdel -f roberto
userdel -f josefina
userdel -f amanda
userdel -f rogerio

groupdel GRP_ADM
groupdel GRP_VEN
groupdel GRP_SEC

groupadd GRP_ADM 
groupadd GRP_VEN
groupadd GRP_SEC

mkdir publico
chmod 777 publico

mkdir adm
chown root:GRP_ADM adm
chmod 770 adm

mkdir ven
chown root:GRP_VEN ven
chmod 770 ven

mkdir sec
chown root:GRP_SEC sec
chmod 770 sec

useradd carlos -G GRP_ADM -s /bin/bash -m -p$(openssl passwd -crypt senha123) -e
useradd maria -G GRP_ADM -s /bin/bash -m -p$(openssl passwd -crypt senha123) -e
useradd joao -G GRP_ADM -s /bin/bash -m -p$(openssl passwd -crypt senha123) -e

useradd debora -G GRP_VEN -s /bin/bash -m -p$(openssl passwd -crypt senha123) -e
useradd sebastiana -G GRP_VEN -s /bin/bash -m -p$(openssl passwd -crypt senha123) -e
useradd roberto -G GRP_VEN -s /bin/bash -m -p$(openssl passwd -crypt senha123) -e

useradd josefina -G GRP_SEC -s /bin/bash -m -p$(openssl passwd -crypt senha123) -e
useradd amanda -G GRP_SEC -s /bin/bash -m -p$(openssl passwd -crypt senha123) -e
useradd rogerio -G GRP_SEC -s /bin/bash -m -p$(openssl passwd -crypt senha123) -e


