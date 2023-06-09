#!/bin/bash

numeros_por_generar=0

if [[ ${#} -eq 0 ]]
then
    numeros_por_generar=10
elif [[ ${#} -eq 1 ]]
then
    numeros_por_generar=${1}
fi

URL="https://www.random.org/integers/?num=${numeros_por_generar}&min=1&max=100&col=1&base=10&format=plain&rnd=new"

suma=0
minimo=101
maximo=0

for numero in $(curl -s ${URL})
do  
    #echo " El valor del numero generadi de manera automatica es: ${numero}"
    suma=$((suma+numero))
    #calcular el minimo
    if [[ ${numero} -lt ${minimo} ]]
    then
        minimo=${numero}
    fi
    #calcular el maximo
    if [[ ${numero} -gt ${maximo} ]]
    then
        maximo=${numero}
    fi
    
done 
echo "La suma de todos los valores es: ${suma}"
echo "El numero mas pequeño es: ${minimo}"
echo "El numero mas grande es: ${maximo}"
#calcular la media
media=$(echo "scale=3; ${suma}/${numeros_por_generar}" | bc)
echo "El valor de la media es: ${media}"


MISSATGE="El valor de la media es: ${media}"

/home/oscar/Cursscripts/Bot/telegram_bot_2.sh "${MISSATGE}"