#!/bin/bash

Fitxer=$1
Desti=$2

cp ${Fitxer} ${Desti}

VboxManage internalcommands sethuuid ${Desti}