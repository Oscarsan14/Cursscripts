#!/bin/bash

# Mostra un missatge de benvinguda a l'examen d'scripts que indiqui l'usuari, la data i hora. Exemple:
# Benvingut/da a l'examen d'scripts, jo sóc en/na xavi. Avui és dia 11/06/2021 i són les 15:00h.
hora=$(date +"%H:%M")
date=$(date +"%d/%m/%Y")
echo "Bienvenido al examen de scripts, yo soy oscar. Hoy es $date y son las $hora h"

# Crea la següent estructura de carpetes amb UNA SOLA COMANDA i mostra-la en forma d'ARBRE:
# examen_scripts/
# examen_scripts/apunts
# examen_scripts/exercicis

# Modifica els permisos del directori examen_scripts per que tothom el pugui llegir i el propietari 
# el pugui llegir, escriure i executar.
# Mostra per pantalla aquests permisos.
chmod ugo+r script0.sh && chmod u+rwx script0.sh 
# Crea la variable NOTA_EXAMEN i dona-li un valor aleatori entre 0 i 10.
nota_examen=5
# Mostra una frase per pantalla com aquesta: La nota del meu examen és un 7.
echo "la nota de tu examen es un ${nota_examen}"
# Demana a l'usuari si ha tingut bona aptitud a classe. 
read -p "¿Has tenido buena aptitud en clase? "  aptitud
# Si contesta "Sí" suma-li un punt a la nota de l'examen, si contesta "No" resta-n'hi un.
    if [[ ${aptitud} -eq si ]]; then
        nota_examen=$(( nota+1  ))
        echo "Nota actual = $nota_examen"    
    fi
        
    if [[ ${aptitud} -eq ${2} ]]; then
        echo "la nota de tu examen es un $((nota_examen-1))"
    fi

# Si l'alumne ha aprovat ha de sortir un missatge com: la teva nota final és un 5, has aprovat

    if [[ ${aptitud} -ge 5 ]]; then
        echo "Tu nota final es un 5, has aprovado"
    fi

# Si l'alumne ha suspès ha de sortir un misstge com: la teva nota és un 3, has suspès

    if [[ ${aptitud} -le 5 ]]; then
        echo "Tu nota final es un 3, has suspendido"
    fi

