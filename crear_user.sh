#!/bin/bash

#Script per crear un usuari

#primer comprovam si som l'usuari root
if [[ ${UID} -ne 0 ]]
then
   echo "Usage ${0}"
   echo
   echo "Has de ser root"
   exit 1
fi 