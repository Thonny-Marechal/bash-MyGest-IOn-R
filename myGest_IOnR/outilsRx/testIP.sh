#!/bin/bash
quitter=1
source outilsRx/fonction.sh
# Couleurs
red='\033[0;31m'
green='\033[0;32m'

while [[ $quitter -ne 0 ]]
do
echo "Veuillez saisir une adresse ip :"
read adresseip
estUneIP $adresseip
done

echo "Envoie de la requête ICMP ..."

res=$(ping $adresseip -w 3 |grep " 0% packet loss" |wc -l)
if [[ $res -eq 1 ]];then
        echo -e "${green}L'adresse ip répond aux pings"
else
        echo -e "${red}L'adresse ip ne répond pas aux pings"
fi
tput sgr0
echo ""
echo "[Appuyer sur entrer pour continuer]"
read 



