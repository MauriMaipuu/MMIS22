#!/bin/bash

num=$(( $RANDOM % 20 + 1 ))
num=$(( $num + 1 ))
pakkumine=0
arvud=1


while [ $pakkumine -ne $num ]
do
	read -p "Arva 1 number 1-st 20-ni: " pakkumine
if [ $pakkumine -gt $num ]
then
	echo "Pakutud number on vaiksem kui $pakkumine. Paku uuesti: "
elif [ $pakkumine -lt $num ]
then
	echo "Pakutud number on suurem kui $pakkumine. Paku uuesti: "
else
	echo "Number oligi $num"
	echo "Arvasid selle $arvud katsega"
fi
(( ++arvud ))
done
