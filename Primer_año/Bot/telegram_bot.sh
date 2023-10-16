
#!/bin/bash

# Notificació de missatges del sistema per Telegram usant un Bot

TOKEN="5617850005:AAF1pYwSSzDTGrNdtNt7MpqGJvZTjUClYR8"
ID="5194629204"
MENSAJE="Hola! Soy Robosimp, es un placer poder trabajar contigo. La fecha del equipo és: $(date)"
URL="https://api.telegram.org/bot$TOKEN/sendMessage"

curl -s -X POST $URL -d chat_id=$ID -d text="$MENSAJE"
