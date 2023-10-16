#!/bin/bash

function Usage(){
    echo "Usage ${0}"
    echo
    echo "has de ser root"
    echo "l'usuari no es pot repetir"
    exit 1
}
if [[ ${UID} -ne 0 ]]
then
    Usage
fi

read -p "Introdueix el nom d'usuari: " USER_NAME
echo "Creant l'usuari ${USER_NAME}"
