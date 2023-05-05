#!/bin/bash
function usage(){
    echo "Usage: tienes que poner por lo menos 2 parametros"
    echo "params_classe.sh x1 x2 [x3...xn]"
    exit 1
}

NUM_PARAM=${#}
echo "Numero de parametros: ${NUM_PARAM}"
if [[ ${NUM_PARAM} -lt 2 ]]
then    
    #error para el numero de parametros
    usage 
fi

# FOR ESTRUCTURA DE CONTROL PER ITERAR
SUMA=0
PRODUCTO=1
for I in ${@}
do
    SUMA=$(($SUMA+I))
    PRODUCTO=$(($PRODUCTO*I))
done
echo "La suma vale ${SUMA}"
echo "La multiplicacion vale ${PRODUCTO}"