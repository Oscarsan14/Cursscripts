#!/bin/bash

function usage(){
    echo "Usage: tienes que poner por lo menos 1 parametros"
    echo "script2.sh x1 [x2...xn]"
    exit 1
}

NUM_PARAM=${#}
#El nom del script ha de ser script2.sh
echo "El nombre del script es ${0}"
#Aquest script ha d'admetre un paràmetre i només un
echo "Parametros introducidos: ${NUM_PARAM}"
#en cas de no rebre un paràmetre s'ha de sortir i emetre una errada
if [[ ${NUM_PARAM} -lt 1 ]]
then    
    usage 
fi
#el paràmetre acceptat és un any de naixement i s'ha de guardar en la variable ANY_NAIXEMENT
ANY_NAIXEMENT=${1}
#Aquest script ha de calcular l'edat de la data introduida i guardar-la en la variable EDAT
FECHA=2023
EDAT=$((${FECHA}-${ANY_NAIXEMENT}))
echo "Tiene ${EDAT} años"
#El script ens ha de demanar que introduim el nostre nom i guardar-lo en la variable NOM
read -p "Introduce tu nombre: " NOM
#El script ha de donar un missatge per pantalla del tipus "GUILLEM tens 47 anys" (per exemple)useradd

echo "${NOM} tienes ${EDAT} años"