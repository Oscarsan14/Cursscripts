#!/bin/bash

#Genera un nombre aleatori entre 1 i 10:
adivina=$(( ( RANDOM % 10 )  + 1 ))
echo "adivina ${adivina}"
intentos=3


########################################################
# Escriu el teu codi aqui
########################################################

while [[ ${intentos} -ne 0 ]]
do
    read -p "Introduce un numero entre el 1 y el 10: " Numero_introducido 

    #si acertamos
    if [[ ${adivina} -eq ${Numero_introducido} ]]
    then
        echo "eureka!!"
        exit 0
    fi

    #si no acertamos

    if [[ ${adivina} -lt ${Numero_introducido} ]]
    then
        echo "Caliente"
    else
        echo "Frio"
    fi
    #restar 1 vida
    intentos=$(( intentos-1  ))
    echo "intentos = $intentos"
done
########################################################
# Fi del teu codi
########################################################

echo "El nombre que havies d'adivinar era: ${adivina}"