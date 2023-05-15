#!/bin/bash

# Escriu les comandes que s'indiquen a cada punt i executa l'script.
# Recorda que és necessari que aquest tingui permisos d'execució.
# començau cada apartat amb un echo indicatiu del que feu (com a l'exemple)

# 0) Exemple: mostra el nom de l'usuari actual:
echo "EXERCICIC 0"
echo "---------------------------------------------------"
echo "Nom de l'usuari: "
whoami
echo 

# 1) Mostra un missatge per pantalla amb el texte "El meu primer script"
echo "EXERCICIC 1"
echo "---------------------------------------------------"
echo "El meu primer script"
whoami
echo 


# 2) Mostra un missatge per pantalla amb la data actual i el format: Avui es dia 18/05/2021
#    Recorda l'us de la comanda: date
#    Pots obtenir ajuda amb: date --help o man date, per exemple amb date +"Any %Y" obtenim el missatge: Any 2021

echo "EXERCICIC 2"
date=$(date +"%d/%m/%Y")
echo "Avui es dia $date"
whoami
echo 

# 3) Mostra un missatge per pantalla amb l'hora actual i el format: Son les 15:20h
#    usa la mateixa comanda: date

echo "EXERCICIC 3"
hora=$(date +"%H:%M")
echo "Son les $hora h"
whoami
echo 

# 4) Mostra el contingut del directori actual
echo "EXERCICIC 4"
echo "---------------------------------------------------"
echo "MOSTRAR  CONTINGUT DEL DIRECTORI ACTUAL: "
ls
echo 

# 5) Mostra el contingut del directori temporal /tmp

echo "EXERCICIC 5"
echo "---------------------------------------------------"
ls -l /tmp
whoami
echo 

# 6) Crea dos directoris nous a /tmp anomenats prova i copies
echo "EXERCICIC 6"
echo "---------------------------------------------------"
mkdir /tmp/prova && mkdir /tmp/copies
whoami
echo 


# 7) Dins el directori prova del pas anterior, crea la següent estructura:
#  /tmp/prova/ingressos
#  /tmp/prova/despeses
echo "EXERCICIC 7"
echo "---------------------------------------------------"
mkdir /tmp/prova/ingressos && mkdir /tmp/prova/despeses
whoami
echo 


# 8) Modifica els permisos del directori d'ingressos per que tothom hi pugui accedir, llegir i escriure
echo "EXERCICIC 8"
echo "---------------------------------------------------"
chmod +rwx /tmp/prova/ingressos
whoami
echo 


# 9) Modifica els permisos echo "Nom de l'usuari: "del directori despeses per que només el propietari hi tingui accés
echo "EXERCICIC 9"
echo "---------------------------------------------------"
chmod u+x /tmp/prova/despeses
whoami
echo 


# 10) Fes una copia del directori /tmp/prova a /tmp/copia
echo "EXERCICIC 10"
echo "---------------------------------------------------"
cp -r /tmp/prova /tmp/copia
whoami
echo 


# 11) *Opcional*
#     Fes una copia del directori /tmp/prova a /tmp/copies/18052021_1525
#     El directori de destí ha de tenir la data i la hora del moment en que s'executa l'script
#     Usa la comanda cp -r /tmp/prova /tmp/copies/$(date +"<FORMAT>"), canvia <FORMAT> pel format de la data corresponent, igual que als punts anteriors.
echo "EXERCICIC 11"
echo "---------------------------------------------------"
echo "Nom de l'usuari: "
whoami
echo 


# 12) Mostra el contingut del directori /tmp/copia en forma d'arbre
echo "EXERCICIC 12"
echo "---------------------------------------------------"
tree /tmp/copia
whoami
echo 


# 13) Mostra el contingut del directori /tmp/copies en forma d'arbre
echo "EXERCICIC 13"
echo "---------------------------------------------------"
tree /tmp/copies
whoami
echo 


# 14) Esborra els directoris /tmp/copies i /tmp/prova i tot el seu contingut
echo "EXERCICIC 14"
echo "---------------------------------------------------"
rm -r /tmp/copies && /tmp/prova
whoami
echo 


# 15) Mostra l'espai lliure del disc dur. (Les unitat han de ser human-readable: 10GB, 123Mb, etc...)
#     Usa la comanda df, pots obtenir ajuda amb df --help o man df 
echo "EXERCICIC 15"
echo "---------------------------------------------------"
df -h
whoami
echo 


# 16) Mostra l'informació de la memoria del sistema. (Les unitat han de ser human-readable: 10GB, 123Mb, etc...)
#     Usa la comanda free, pots obtenir ajuda amb free --help o man free
echo "EXERCICIC 16"
echo "---------------------------------------------------"
free -h
whoami
echo 


# 17) Crea un nou script, al directori actual, anometat system_info.sh, que mostri informació del disc dur i de la memoria RAM usant les comandes anteriors.
#     Crida aquest nou script que acabes de crear.
echo "EXERCICIC 17"
echo "Ejecutando el script system_info.sh..."
echo "--------------------------------------"

./system_info.sh

echo "--------------------------------------"
echo "Script system_info.sh finalizado."

whoami
echo 


# 18) Mostra el contingut de l'script anterior
#     Usa la comadna cat
echo "EXERCICIC 18"
echo "---------------------------------------------------"
cat ./system_info.sh
whoami
echo 


# 19) Mostra tots els fitxers del directori actual que acabin amb la l'extensió .sh
#     Has d'usar la comanda cat
echo "EXERCICIC 19"
echo "---------------------------------------------------"
cat *.sh
whoami
echo 


# 20) *Opcional*
#     Fes el mateix que abans, pero usant la comanda find. Pots obtenir ajuda amb find --help o man find.
echo "EXERCICIC 20"
echo "---------------------------------------------------"
echo "Nom de l'usuari: "
whoami
echo 


# Fi. Acabam l'script retornant un 0, axiò vol dir que l'script ha acabat correctament.
exit 0