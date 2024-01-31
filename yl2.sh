#!/bin/bash
#Autor: Mauri Maipuu
#Kaustade kopeerimine
#muudetud: 30.1.2024

#kusib millist kausta kopeerida
echo "Millist kausta kopeerida?"
read kaust1

#kusib kuhu kausta kopeerida
echo "Kuhu soovid selle kopeerida?"
read kaust2

#kopeerib kaust1-he kaust2-te
cp -r $kaust1 $kaust2

#annab teada et on lopetanud
echo "Kausta $kaust1 kopeerimine kausta $kaust2 on loppenud"
