#!/bin/bash
source myGest_IOnR/config.sh

echo -n "Donnez l'id de l'équipement à supprimer : "
read id

mysql -u eleve -pbtsinfo -e "use $base; SELECT * FROM Equipement WHERE id=$id;"

read -r -p "Confirmer la suppression (O/n) : " response

case "$response" in
    [oO][uU][iI]|[oO]) 
        mysql -u eleve -pbtsinfo -e "use $base; DELETE FROM Equipement WHERE id=$id;"
        echo "Les données ont été supprimées de la base de données"
        ;;
    *)
        echo "Suppression annulée"
        ;;
esac
echo ""
echo "[Appuyer sur entrer pour continuer]"
read 
