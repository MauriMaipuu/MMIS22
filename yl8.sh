#!/bin/bash
#Autor: Mauri Maipuu

kp =`date +%d%m%y_%H%M%S`
filename = "Logbu_$kp.tar.gz"

read -p "Millist kausta varundada? " kaust1
echo $kaust1

if [ -d $kaust1 ]
then
	echo "Kaust olemas" &> /dev/null
else
	echo "Kausta $kaust1 ei eksisteeri"
	exit
fi

echo

read -p "Kuhu $kaust1 varundada? "  kaust2
echo $kaust2

if [ -d $kuhu ]
then
	echo "Kaust olemas" &> /dev/null
else
	echo "Kausta $kaust2 ei eksisteeri"
	exit
fi

tar -czvpf $kaust2/$filename $kaust1 &> /dev/null
if [ -f $kaust2/$filename ]
then
	echo "Fail olemas" &> /dev/null
else
	echo "Faili ei eksisteeri"
	exit
fi

echo "Kausta $kaust1 varundamine kausta $kaust2 on edukalt loppenud"
