#!/bin/bash

isInvoked=$1
customText=$2
defaultText="Me encanta bash!!"

echo "Ejercicio 1 - Manejo de archivos"
mkdir foo/
mkdir foo/dummy
mkdir foo/empty
touch foo/dummy/file1.txt
touch foo/dummy/file2.txt

if [[ $isInvoked = "1" ]]
then 
    echo $customText >> foo/dummy/file1.txt
else
    echo $defaultText >> foo/dummy/file1.txt
fi 