#!/bin/bash bash

echo "crear nuevo directorio lo bautizare archivDevOps"
directoryName="archivDevOps"
mkdir $directoryName

echo "creando los nuevos archivos dentro del directorio principal"
for i in {1..9}
do
    touch $directoryName/archiv$i
done 

echo "ingresando al directorio para modificar permiso a los archivos"
cd $directoryName

echo "quitando los permisos a todos los archivos"
chmod a-rwx archiv*

echo "Parte 2 modificando los permisos por cada archivo"

chmod u=rwx,go= archiv1
chmod u=rw,go= archiv2
chmod a=rwx archiv3
chmod u=rwx,g=rw,o=r archiv4
chmod u=rwx,g=r,o= archiv5
chmod u=rx,g=rw,o=r archiv6
chmod u=r,g=,o=x archiv7
chmod u=rw,g=r,o=r archiv8
chmod u=rw,g=rw,o=r archiv9

echo "Parte 3 modificando los permisos por cada archivo"

chmod o+r archiv1
chmod u-w archiv2
chmod a-x archiv3
chmod go-r archiv4
chmod g-r,o+wx archiv5
chmod u+w,o-r archiv6
chmod u+w,g+x,o-x,o+w archiv7
chmod u-rw,g-r archiv8
chmod u+rw,g+rw,o+r archiv9