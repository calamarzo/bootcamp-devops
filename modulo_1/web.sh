#!/bin/sh

#sin fichero, parametro 1 web y parametro 2 palabra

if [ -z "$1" ]
then
        echo "Dame una web en formato entero (ej.: https://lemoncode.net)"
        read WEB
else
        WEB=$1
fi

if [ -z "$2" ]
then
        echo "Dame una palabra:"
        read WORD
else
        WORD=$2
fi
curl -v --silent $WEB --stderr - | grep -n $WORD | awk -F: '{print "Linea : "$1}'
