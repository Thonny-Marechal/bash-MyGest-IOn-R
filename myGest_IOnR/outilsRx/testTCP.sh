#!/bin/bash
quitter=1
max_length2=5
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

while true; do
echo "Veuillez saisir un port :"
    read port
   if [[ $port =~ ^[[:digit:]]+$ && ${#port} -le $max_length2 ]]; then
        break
    else
        echo "La saisie est invalide. Veuillez réessayer."
    fi
done
echo "Envoie de la requête TCP ..."

res=$(nmap -p $port -v $adresseip |grep "open" |wc -l)

if [[ $res -eq 2 ]];then
        echo -e "${green}Le port TCP est ouvert sur l'adresse ip"
else
        echo -e "${red}Le port TCP n'est pas ouvert sur l'adresse ip"
fi
tput sgr0
echo ""
echo "[Appuyer sur entrer pour continuer]"
read 


