#!/bin/bash

currentDir=$(pwd)
scriptFolder="scripts"

echo "validando que el directorio 'scripts' se encuentra"
echo "en la presente ruta de ejecución"
echo "================================"
echo "================================"
# read -p "Introduzca un directorio " directorio
if [ -d $scriptFolder ]
then 
	echo "el directorio '"$scriptFolder"' se encuentra disponible"
	echo "================================"
    echo "================================"
else
	echo "El directorio no existe"
    echo "verifique que el directorio se encuentre en la actual ruta de ejecucion"
    echo "se procede a salir del script principal"
    exit 1
fi 

# Bash Menu Script

PS3='Elija el script a ejecutar o (5) para salir: '
options=("Ejercicio 1" "Ejercicio 2" "Ejercicio 3" "Ejercicio 4" "Quit")
select opt in "${options[@]}"
do
    case $opt in
        "Ejercicio 1")
            echo "se procedera a ejecutar el script ejercicio1.sh"
            source $currentDir/$scriptFolder/ejercicio1.sh
            echo "================================"
            echo "================================"
            ;;
        "Ejercicio 2")
            echo "se procedera a ejecutar el script ejercicio2.sh"
            source $currentDir/$scriptFolder/ejercicio2.sh
            echo "================================"
            echo "================================"
            ;;
        "Ejercicio 3")
            echo "se procedera a ejecutar el script ejercicio3.sh"
            echo "Si desea ingrese un texto pasado 10 segundos"
            echo "continuara la ejecucion con el texto en blanco"
            read -t 10 -p "Ingrese un texto personalizado " customText
            source $currentDir/$scriptFolder/ejercicio3.sh "$customText"
            echo "================================"
            echo "================================"
            ;;
        "Ejercicio 4")
            echo "se procedera a ejecutar el script ejercicio4.sh"
            read -p "ingrese una palabra a buscar " searchText
            source $currentDir/$scriptFolder/ejercicio4.sh "$searchText"
            echo "================================"
            echo "================================"
            ;;
        "Quit")
            break
            ;;
        *) echo "invalid option $REPLY";;
    esac
done
