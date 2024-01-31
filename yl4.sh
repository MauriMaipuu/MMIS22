#!/bin/bash
#autor: Mauri Maipuu
#Muudetud: 30.1.2024

kaust1="/var/log"
kaust2="/varundus"
backupname=$kaust2/$(date +%d%m%y_%H%M%S).tar.gz

tar -czvpf $backupname $kaust1


