#!/bin/bash

#logar como root
#definir senha do root


cd /home
rm -rf *

groupadd GRP_ADM GRP_VEN GRP_SEC
mkdir publico adm ven sec

chmod 777 publico
chown root: GRP_ADM adm
chmod 770 adm
chown root: GRP_VEN ven
chmod 770 ven
chown root: GRP_SEC sec
chmod 770 sec

useradd carlos -G GRP_ADM -s /bin/bash -m -p$(openssh passwd -crypt senha123) -e
useradd maria -G GRP_ADM -s /bin/bash -m -p$(openssh passwd -crypt senha123) -e
useradd joao -G GRP_ADM -s /bin/bash -m -p$(openssh passwd -crypt senha123) -e

useradd debora -G GRP_VEN -s /bin/bash -m -p$(openssh passwd -crypt senha123) -e
useradd sebastiana -G GRP_VEN -s /bin/bash -m -p$(openssh passwd -crypt senha123) -e
useradd roberto -G GRP_VEN -s /bin/bash -m -p$(openssh passwd -crypt senha123) -e

useradd josefina -G GRP_SEC -s /bin/bash -m -p$(openssh passwd -crypt senha123) -e
useradd amanda -G GRP_SEC -s /bin/bash -m -p$(openssh passwd -crypt senha123) -e
useradd rogerio -G GRP_SEC -s /bin/bash -m -p$(openssh passwd -crypt senha123) -e


