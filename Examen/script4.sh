#!/bin/bash

function Usage(){
    echo "tienes que ser root"
    exit 1
}

# Aquest script s'ha d'executar com a root, en cas de no ser root s'ha de donar un missatge
# d'errada i sortir

if [[ ${UID} -ne 0 ]]
then
    Usage
fi

# Mostra un missatge de benvinguda a l'examen d'scripts que indiqui l'usuari, la data i hora. Exemple:
# Benvingut/da a l'examen d'scripts, jo sóc en/na xavi. Avui és dia 11/06/2021 i són les 15:00h.
hora=$(date +"%H:%M")
date=$(date +"%d/%m/%Y")
echo "Bienvenido al examen de scripts, yo soy oscar. Hoy es $date y son las $hora h"
# Demana que introduiexin un nom d'usuari i guarda-ho dins la variable USER
read -p "Introduce un nombre de usuario: " USER
echo "Creant l'usuari ${USER}"
# Crear l'usuari de sistema amb el valor de la variable USER
useradd $USER
# Si s'ha produït una errada creat l'usuari donar un missatge d'error i sortir.
if [[ ${?} -ne 0 ]]
    then
    echo "Error creando el usuario"
    exit 1
    fi
#Mostrau el contingut del fitxer /etc/passwd i comprovau que s'ha creat l'usuari.
cat /etc/passwd