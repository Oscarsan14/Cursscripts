#!/bin/bash

function usage(){
    #INDICAM LES INSTRUCCIONS DEL SCRIPT
    echo "INSTRUCCIONS: ./delete_users.sh USER_NAME [USER_NAME ... ]"
    echo "EXECUTAR COM A ROOT"
    exit 1
}
#COMPROVAR QUE SOU ROOT
if [ ${UID} -ne 0 ]
then
    usage
fi

while [[ ${#} -ge 1 ]]
do
    user_name=${1}
    deluser --remove-home ${user_name}
    #Comprobar si ha habido algun erro al borrar el usuario
    if [[ ${?} -ne 0 ]]
    then
        echo "ERRADA BORRANT USUARI"
        exit 1
    fi
    shift
done