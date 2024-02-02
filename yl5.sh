#!/bin/bash
#autor: Mauri Maipuu
#Muudetud: 02.02.2024

echo "Kas soovid kausta kopeerida voi liigutada"
echo ""
echo "1 = kausta kopeerimine"
echo "2 = kausta liigutamine"

read choice

case $choice in
	1) echo "Millist kausta soovid kopeerida?"
	   read kaust1
	   echo "Kuhu kausta soovid selle kopeerida?"
	   read kaust2
	   cp -r $kaust1 $kaust2
	   echo "Kopeerimine kaustast $kaust1 kausta $kaust2 edukalt loppenud"
	   ;;
	2) echo "Millist kausta liigutada?"
	   read kaust1
	   echo "Kuhu kausta liigutada?"
	   read  kaust2
	   mv $kaust1 $kaust2
	   echo "Liigutamine kaust $kaust1 kausta $kaust2 edukalt loppenud"
	   ;;
	x) exit 1;;
esac
