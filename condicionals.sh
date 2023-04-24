#!/bin/bash

read -p "Introdueixi X: " X

if [[ ${X} -lt 5 ]]
then
    echo "es menor que 5"
elif [[ ${X} -gt 5 ]]
then 
    echo "es major que 5"
else
    echo "es igual a 5"
fi