#!/bin/bash
source myGest_IOnR/config.sh

echo "Veuillez saisir les informations suivantes :"
echo -n "> Nom : "
read nom
echo -n "> Adresse MAC : "
read mac
echo -n "> Adresse IP : "
read ip
echo -n "> Masque (CIDR) : "
read cidr
echo -n "> Type (1: machine; 2: switch; : 3: serveur) : "
read type
echo "Récapitulatif de la requête : "
echo "> INSERT INTO Equipement (nom, adMAC, adIP, CIDR, idT) VALUES ('$nom','$mac','$ip',$cidr,$type);"

read -r -p "Confirmer l'insertion (O/n) : " response

case "$response" in
    [oO][uU][iI]|[oO]) 
        mysql -u eleve -pbtsinfo -e "use $base; INSERT INTO Equipement (nom, adMAC, adIP, CIDR, idT) VALUES ('$nom','$mac','$ip',$cidr,$type);"
        echo "Les saisies on été intégrées à la base de données"
        ;;
    *)
        echo "Insertion annulée"
        ;;
esac
echo ""
echo "[Appuyer sur entrer pour continuer]"
read 
