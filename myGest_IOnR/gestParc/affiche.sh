#!/bin/bash
source myGest_IOnR/config.sh
#import des configs et fonctions
source outilsRx/fonction.sh
source myGest_IOnR/config.sh

afficheTitre "Gestion du parc"
quitter=1
while [[ $quitter -ne 0 ]]
do
echo -e "Que souhaitez vous consulter:"
echo "1) Toutes les informations"
echo "2) Seulement les machines"
echo "3) Seulement les serveurs"
echo "4) Seulement les Switchs"
echo "0) Retour au menu principal"
echo -e "Veuillez choisir une option :"
read choix
case $choix in 
	1 )
		mysql -u eleve -pbtsinfo -e "use $base; Select nom, adMAC, adIP, CIDR From TypeE,Equipement Where Equipement.idT=TypeE.id;"
		;;
	2 )
		mysql -u eleve -pbtsinfo -e "use $base; Select nom, adMAC, adIP, CIDR From TypeE,Equipement Where Equipement.idT=TypeE.id And libelle='Machine';"
		;;
	3 )
		mysql -u eleve -pbtsinfo -e "use $base; Select nom, adMAC, adIP, CIDR From TypeE,Equipement Where Equipement.idT=TypeE.id And libelle='Serveur';"
		;;
	4 )
		mysql -u eleve -pbtsinfo -e "use $base; Select nom, adMAC, adIP, CIDR From TypeE,Equipement Where Equipement.idT=TypeE.id And libelle='Switch';"
		;;
	0 )
		quitter=0
		;;
	* )
		echo "Erreur dans la saisie"
		;;
esac
done

