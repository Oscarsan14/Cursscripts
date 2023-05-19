#!/bin/bash

particio=$(df -h /dev/sda1 | grep sda1)
/home/oscar/Cursscripts/Bot/telegram_bot_2.sh "${particio}"