#!/bin/bash

#Muestra el nombre del script
echo "El nombre de este script es: ${0}"

#Muestra el PATH (RUTA) y el FILENAME del script 
echo "El PATH: $(dirname ${0}) el fichero seria $(basename ${0})"

#Numero de parametros 

Numero_de_parametros=${#}

if [[ ${Numero_de_parametros} -eq 0 ]]
then
    echo "USAGE: ${0} USER_NAME [USER_NAME] ..."
    exit 1
fi 

#${*} Muestra el conjunto de parametros en una sola palabra "${1} ${2} .... ${n}"
echo "${*}"
#${@} Muestra el conjunto de parametros en palabras diferentes "${1}" "${2}" .... "${n}"
echo "${@}"

#estructura de control FOR para interar los parametros

for USER_NAME in "${@}"
do
    PASSWORD=$(date +%s%N | sha256sum | head -c10)
    echo "${USER_NAME}:${PASSWORD}"
done