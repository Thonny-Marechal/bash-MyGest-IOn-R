#!/bin/bash
$suppr
source myGest_IOnR/config.sh

# Création du fichier
echo "Choisissez le nom de votre fichier : "
read fichier
echo ""

# Sélection des informations et envoie des informations de la BDD
quitter=1
while [[ $quitter -ne 0 ]]
do
echo -e "Quelles informations de la base de données, voulez-vous ? :"
echo "1) Toutes les informations de la base de données"
echo "2) Seulement les machines de la base de données"
echo "3) Seulement les serveurs de la base de données"
echo "4) Seulement les Switchs de la base de données"
echo "0) Retour au menu principal"
echo -e "Choisissez l'option :"
read choix
case $choix in 
	1 )
		mysql -u eleve -pbtsinfo -e "use $base; Select * From TypeE,Equipement Where Equipement.idT=TypeE.id;" > $fichier
        quitter=0
		;;
	2 )
		mysql -u eleve -pbtsinfo -e "use $base; Select * From TypeE,Equipement Where Equipement.idT=TypeE.id And libelle='Machine';" > $fichier
        quitter=0
		;;
	3 )
		mysql -u eleve -pbtsinfo -e "use $base; Select * From TypeE,Equipement Where Equipement.idT=TypeE.id And libelle='Serveur';" > $fichier
        quitter=0
		;;
	4 )
		mysql -u eleve -pbtsinfo -e "use $base; Select * From TypeE,Equipement Where Equipement.idT=TypeE.id And libelle='Switch';" > $fichier
        quitter=0
		;;
    0 )
		quitter=0
		;;
	* )
		echo "Erreur dans la saisie"
		;;
esac
done
echo ""

# Récap de la commande
echo "Votre choix :"
if [[ $choix -eq 1 ]];then
mysql -u eleve -pbtsinfo -e "use $base; Select * From TypeE,Equipement Where Equipement.idT=TypeE.id;"
elif [[ $choix -eq 2 ]];then
mysql -u eleve -pbtsinfo -e "use $base; Select * From TypeE,Equipement Where Equipement.idT=TypeE.id And libelle='Machine';"
elif [[ $choix -eq 3 ]];then
mysql -u eleve -pbtsinfo -e "use $base; Select * From TypeE,Equipement Where Equipement.idT=TypeE.id And libelle='Serveur';"
elif [[ $choix -eq 4 ]];then
mysql -u eleve -pbtsinfo -e "use $base; Select * From TypeE,Equipement Where Equipement.idT=TypeE.id And libelle='Switch';"
fi
echo ""

# Confirmation
read -r -p "Confirmer l'insertion (O/n) : " response

case "$response" in
    [oO][uU][iI]|[oO]) 
        echo "Le fichier a été généré"
        ;;
    *)
        echo "Insertion annulée"
        suppr=$(rm -r $fichier)
        ;;
esac
echo ""
echo "[Appuyer sur entrer pour continuer]"
read


