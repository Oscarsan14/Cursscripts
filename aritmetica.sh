#!/bin/bash




read -p "introdueix el valor de X: " X
read -p "introdueix el valor de Y: " Y

echo "Has introduit ${X} i ${Y}"
SUMA=$((X+Y))
echo "${X}+${Y}=${SUMA}"
RESTA=$((X-Y))
echo "${X}-${Y}=${RESTA}"
PRODUCTE=$((X*Y))
echo "${X}*${Y}=${PRODUCTE}"
DIVISIO=$((X/Y))
echo "${X}/${Y}=${DIVISIO}"


