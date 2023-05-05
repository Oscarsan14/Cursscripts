#|/bin/bash
#ESCRIU UN SCRIP QUE RECORRO EL FITXER numeros.txt i 
#mostri QUANTES LINIES TE EL FITXER Y QUE CALCULI LA MITJA ARITMETICA DELS NUMEROS
NUMERO_LINIES=0
SUMA=0
for linia in $(cat numeros.txt)
do  
    #INCREMENTAMOS EL NUMERO DE LINIAS 
    NUMERO_LINIES=$((NUMERO_LINIES+1))
    SUMA=$((SUMA+linia))
done
echo "linea: ${NUMERO_LINIES}"
echo "la suma vale: ${SUMA}"
#MITJANA = SUMA DIVIDIDO EL NUMERO DE LINIES
MITJANA=$(echo "scale=2; ${SUMA}/${NUMERO_LINIES}" | bc)
echo "La mitjana vale: ${MITJANA}"