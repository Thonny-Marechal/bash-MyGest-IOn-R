#!/bin/bash
quitter=1
source myGest_IOnR/config.sh
# Couleurs
red='\033[0;31m'
green='\033[0;32m'

echo > iprouge.txt
echo > ipverte.txt
mysql -u eleve -pbtsinfo -e "use $base; SELECT adIP FROM Equipement;" > listadresseip.txt
nbrip=$(wc listadresseip.txt -l | cut -d' ' -f1)

while [[ quitter -lt $nbrip ]]
do
  let "quitter=quitter+1"
  ip=$(head -n $quitter listadresseip.txt | tail -n 1)
   echo "Envoie du ping vers $ip..."
   res=$(ping $ip -w 3 |grep " 0% packet loss" |wc -l)
        if [[ $res -eq 1 ]];then
           echo -e "${green}" $ip >> ipverte.txt
        else
           echo -e "${red}" $ip >> iprouge.txt
        fi
done
echo "Voici les ips actives :"
cat ipverte.txt
echo "Voici les ips inactives :"
cat iprouge.txt
tput sgr0
echo ""
echo "[Appuyer sur entrer pour continuer]"
read
tput sgr0