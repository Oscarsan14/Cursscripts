#!/bin/bash

HOST=$(hostname)
IP=$(curl ifconfig.me)
echo ${IP}
MISSATGE="La maquina ${HOST} se ha iniciado el dia $(date) con la ip: ${IP}"

/home/oscar/cursscripts/Bot/telegram_bot_2.sh "${MISSATGE}"