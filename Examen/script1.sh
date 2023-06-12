#!/bin/bash

function usage(){
    echo "Usage: tienes que poner por lo menos 1 parametros"
    echo "script2.sh x1 x2 [x3...xn]"
    exit 1
}

NUM_PARAM=${#}
#El nom del script ha de ser script2.sh
echo "El nombre del script es ${0}"
#aquest script ha d'acceptar un màxim de dos paràmetres
echo "Parametros introducidos: ${NUM_PARAM}"
#si rebem més de 2 paràmetres ens ha de donar una errada i sortir
if [[ ${NUM_PARAM} -gt 2 ]]
then    
    usage 
fi
#si rebem un paràmetre aquest serà el nostre nom, s'ha d'introduir en la variable NOM 
NOM=${1}
echo "El nombre es: ${NOM}"
#si rebem un segon paràmetre aquest serà el LLINATGE i s'ha d'introduir dins aquesta variable
LLINATGE=${2}
echo "El apellido es: ${LLINATGE}"
#al final l'script ha d'emetre un missatge per pantalla salundant a l'usuari
echo "Hola, el script ya se ha acabado"