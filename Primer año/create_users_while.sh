#!/bin/bash

function usage(){
    #INDICAM LES INSTRUCCIONS DEL SCRIPT
    echo "INSTRUCCIONS: ./create_users.sh USER_NAME [USER_NAME ... ]"
    echo "EXECUTAR COM A ROOT"
    exit 1
}

#COMPROVAR QUE SOU ROOT
if [[ $UID -ne 0 ]]; then
  usage
fi

while [[ ${#} -ge 1 ]]
do
    user_name=${1}
    password=$(date +%s%N | sha256sum | head -c10)
    echo "${user_name}:${password}"
    useradd -m ${user_name}
    #Comprovar si se ha creado bien el usuario
    if [[ ${?} -ne 0 ]]
        then
        echo "Error creando el usuario"
        exit 1
    fi
    
    if [[ ${?} -ne 0 ]]
    then
        echo "Error cambiando la contraseña"
        exit 1
    fi
    #Cambiar contraseña
    echo "${user_name}:${password}" | chpasswd
    #comprobar que ha ido bien 
    if [[ ${?} -ne 0 ]]
    then
        echo "Error cambiando la contraseña"
        exit 1
    fi
    #FER QUE L'USARI HAGI DE CANVIAR EL PASSWORD AL PRIMER LOGIN
    passwd -e ${user_name}
    shift
done



