#!/bin/bash
#Autor: Mauri Maipuu
#Muudetud: 30.1.2024

#kysib millist kausta varundada
echo "millist kausta soovid varundada?"
read kaust1

#kysib kuhu varundada
echo "Kuhu soovid selle varundada?"
read kaust2

#tar k2sk varundamiseks
backupname=$kaust2/$(date +%y%m%d_%H%M%S).tar.gz
tar -czvpf $backupname $kaust1 >/dev/null

#annab teada et on lopetatud
echo "Kausta $kaust1 varundamine kausta $kaust2 on loppenud."
echo "Varundus faili nimi on $backupname"
