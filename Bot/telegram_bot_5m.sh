#!/bin/bash

particio=$( df -h /dev/nvme0n1p5 | grep nvme0n1p5)
/home/oscar/cursscripts/Bot/telegram_bot_5m.sh "${particio}"