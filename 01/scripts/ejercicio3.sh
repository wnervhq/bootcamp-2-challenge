#!/bin/bash bash

echo "Ejercicio 3 - Argumentos del script"
customText=$1
defaultText="Que me gusta bash!!!!"

currentDir=$(pwd)
# echo $currentDir

if [[ $customText != "" ]]
then 
    echo "El texto personalizado es"
    echo $customText
    # source $(dirname "$0")/ejercicio1.sh 1 $customText
    # source $(dirname "$0")/ejercicio2.sh
    source $currentDir/scripts/ejercicio1.sh 1 "$customText"
    source $currentDir/scripts/ejercicio2.sh
else
    echo "Se ejecuta enviando el texto"
    echo $defaultText
    source $currentDir/scripts/ejercicio1.sh 1 "$defaultText"
    source $currentDir/scripts/ejercicio2.sh
fi 