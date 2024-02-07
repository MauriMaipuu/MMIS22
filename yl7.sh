#!/bin/bash
#Autor: Mauri Maipuu
#Muudetud: 06.02.2024

if [ -d /var/vanadfailid ]
then
	tar -czvpf /var/backups/varundus.tar.gz /var/vanadfailid &> /dev/null
	echo "Kaust leiti ja varundati /var/backups"
	rm -r /var/vanadfailid/* &> /dev/null
else
	echo "Kausta ei leitud, skript seiskub"
	exit 1
fi
