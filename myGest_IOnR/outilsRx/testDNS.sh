#!/bin/bash
max_length2=20
quitter=1
source outilsRx/fonction.sh

while [[ $quitter -ne 0 ]]
do
echo "Veuillez saisir une adresse ip :"
read adresseip
estUneIP $adresseip
done

read -r -p "Voulez-vous ajouter une url avec ? (O/n) : " response

case "$response" in
    [oO][uU][iI]|[oO]) 
       while true; do
       echo "Veuillez saisir une url :"
       read url
       if [[ $url =~ ^[[:alnum:][:punct:]]+$ && ${#url} -le $max_length2 ]]; then
       break
       else
       echo "La saisie est invalide. Veuillez réessayer."
       fi
       done
       echo "Résultat :"
       dig $adresseip@$url
       ;;
    *)
       echo "Résultat :"
       dig $adresseip
        ;;
esac
echo ""
echo "[Appuyer sur entrer pour continuer]"
read 
