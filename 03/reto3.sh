#!/bin/bash bash
newDirectory="nueva_carpeta"
newFile=archivo_nuevo.txt
newNameFile=archivo_viejo.txt
textForFile="Nueva línea de texto"
nameForLink=enlace.ln

# Sitúate en tu directorio personal de usuario.
directoryUser=$(eval echo ~$USER)
echo $directoryUser
cd $directoryUser
# Crea un directorio llamado "nueva_carpeta".
mkdir $newDirectory
# Accede a esta carpeta que acabas de crear.
cd $newDirectory
# Crea un archivo en este directorio y llámalo archivo_nuevo.txt.
touch $newFile
# Cámbiale el nombre a este último archivo que has creado y llámalo archivo_viejo.txt.
mv $newFile $newNameFile
# Añade el texto "Nueva línea de texto" al archivo desde el terminal.
echo $textForFile>>$newNameFile
# Cambia los permisos de este archivo para que todos los usuarios puedan leer, escribir y ejecutarlo.
chmod a=rwx $newNameFile
# Sube un nivel de directorio, es decir, vuelve al directorio anterior.
cd ..
# Crea un enlace al archivo que creaste en esta carpeta llamado "enlace.ln".
ln -s $directoryUser/$newDirectory/$newNameFile $nameForLink
# Elimina el directorio "nueva_carpeta" y los archivos que contenga.
rm -rf $directoryUser/$newDirectory