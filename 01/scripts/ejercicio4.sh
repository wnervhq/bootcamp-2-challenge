#!/bin/bash bash

wordFind=$1
urlPage="https://es.wikipedia.org/wiki/DevOps"
currentDir=$(pwd)
# wordFind="enciclopedia"

wget -o downloadedFile -nv $urlPage
filename=$(awk '{print $6}' downloadedFile | sed 's/"//g')
data=$(grep -nr "$wordFind" $filename)
exitStatus=$?

if [[ $exitStatus == 0 ]]
then
    # echo "grep return "$exitStatus
    echo "se encontra el texto en las siguientes lineas"
    echo -e $data
else
    echo "la palabra " $wordFind " no fue hallada"
    echo "grep return "$exitStatus
fi

echo "=========="
echo "=========="
echo "se borraran los archivos descargados"
rm -rf $filename downloadedFile
