#!/bin/bash
# Datenträger
hdd=/dev/md0

# Ausloeseschwelle in %
max=90

# Aktuell in benutzung in %
use=$(df $hdd | egrep -o '[^rw] ..%' | sed 's/%//g')
echo "use: $use"


#Hokuspokus
if [ $use -gt $max ];
        then
    echo "Speicher Nachfüllen!"
        else
    echo "Genug Speicher"
        fi
