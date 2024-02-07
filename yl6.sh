#!bin/bash
#autor:Mauri Maipuu
kaust1 = /var/log
esimene = /varundus/esimene
teine = /varundus/teine
kolmas = /varundus/kolmas
backupname1 = $esimene/$(date +%d%m%y_%H%M%S).tar.gz
backupname2 = $teine/$(date +%d%m%y_%H%M%S).tar.gz
backupname3 = $komans/$(date +%d%m%y_%H%M%S).tar.gz

now = `date +"%a"`

case $now in
	Mon|Wed|Fri)
		tar -czvpf $backupname1 $kaust1;;
	Tue|Thu|Sat)
		tar -czvpf $backupname2 $kaust1;;
	Sun)
		tar -czvpf $backupname3 $kaust1;;
esac
