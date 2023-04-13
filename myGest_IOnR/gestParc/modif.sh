#!/bin/bash
source myGest_IOnR/config.sh

echo -n "Donnez l'id de l'équipement à modifier : "
read id
mysql -u eleve -pbtsinfo -e "use $base; SELECT * FROM Equipement WHERE id=$id;"
echo -n "> Nom : "
read nom
echo -n "> Adresse MAC : "
read mac
echo -n "> Adresse IP : "
read ip
echo -n "> Masque (CIDR) : "
read cidr
echo -n "> Type (1: machine; 2: switch; 3: serveur) : "
read type
echo "Récapitulatif de la requête : "
echo "> UPDATE Equipement set nom='$nom', adMAC='$mac', adIP='$ip', CIDR=$cidr, idT=$type WHERE id=$id;"

read -r -p "Confirmer la modification (O/n) : " response

case "$response" in
    [oO][uU][iI]|[oO]) 
        mysql -u eleve -pbtsinfo -e "use $base; UPDATE Equipement set nom='$nom', adMAC='$mac', adIP='$ip', CIDR=$cidr, idT=$type WHERE id=$id;"
        echo "Les données on été modifiées dans la base de données"
        ;;
    *)
        echo "Modification annulée"
        ;;
esac
echo ""
echo "[Appuyer sur entrer pour continuer]"
read 
