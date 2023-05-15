#!/bin/bash

particio=$(df -h /dev/sda1 | grep sda1)
/home/oscar/cursscripts/Bot/telegram_bot_2.sh "${particio}"