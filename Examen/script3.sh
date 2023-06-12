#!/bin/bash
#obteniu la vostra ip pública amb la comanda curl ifconfig.me i guardau-la en la variable IP
IP=$(curl ifconfig.me)
#enviau aquesta ip pública al vostre bot de telegram.
#envia al bot de telegram el token del teu bot
#envia al bot de telegram el teu id
#envia al bot de telegram el teu nom


TOKEN="5617850005:AAF1pYwSSzDTGrNdtNt7MpqGJvZTjUClYR8"
ID="5194629204"
NOM="Oscar"
URL="https://api.telegram.org/bot$TOKEN/sendMessage"

MENSAJE="La ip pública es ${IP}, el token es ${TOKEN}, mi id es ${ID}, y mi nombre es ${NOM}"
curl -s -X POST $URL -d chat_id=$ID -d text="${MENSAJE}"