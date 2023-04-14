#!/bin/bash
echo "Installation des éléments essentiels pour le programme ..."

sudo apt update -y > /dev/null 2> /dev/null
sudo apt install lolcat dnsutils nmap figlet -y > /dev/null 2> /dev/null
mkdir myGest_IOnR

while true; do
echo "Quel nom voulez-vous pour la base de données ? "
read -p "> " base
if [[ $base =~ ^[[:alpha:]]+$ && ${#url} ]]; then
mysql -u eleve -pbtsinfo -e "CREATE DATABASE $base"; 
mysql -u eleve -pbtsinfo $base < install/myGestIOnR.sql;

break
else
echo "La saisie est invalide. Veuillez réessayer."
fi
done

read -r -p "Voulez-vous créer un utilisateur sql ? (O/n) : " response
case "$response" in
    [oO][uU][iI]|[oO])
		echo "Choisissez votre nom d'utilisateur :"
		read -p "> " user
		conf=1
		while [[ $conf -ne 0 ]]
		do
		echo -e "Entrez votre mot de passe : "
	 	read -s pass
		echo -e "Retapez votre mot de passe : "
		read -s pass2
		if [[ $pass == $pass2 ]];then
		mysql -u eleve -pbtsinfo -e "CREATE USER '$user'@'localhost' identified by '$pass' ";
		conf=0
		else
		echo "Les mots de passe ne correspondent pas !"
		fi
		done
		echo "Utilisateur créé"
        ;;
    *)
        ;;
esac

echo "Installation terminée"
quitter=1
while [[ $quitter -ne 0 ]]
do
echo "Tapez 1 si vous êtes un serveur ou 0 si vous êtes une machine :"
read choix
case $choix in 
	0 )
	    echo "Vous êtes donc une machine"
        echo "Installation des programmes nécessaires pour votre utilisation ..."
        sudo apt install -y mariadb-client /dev/null 2> /dev/null
		echo "#!/bin/bash" >> myGest_IOnR/config.sh
		echo "machine=1" >> myGest_IOnR/config.sh
		echo "base=$base" >> myGest_IOnR/config.sh
		quitter=0
		;;
	1 )
	    echo "Vous êtes donc un serveur"
        echo "Installation des programmes nécessaires pour votre utilisation ..."
        sudo apt install -y mariadb-server /dev/null 2> /dev/null
		echo "#!/bin/bash" >> myGest_IOnR/config.sh
		echo "serveur=1" >> myGest_IOnR/config.sh
		echo "base=$base" >> myGest_IOnR/config.sh
		quitter=0
		;;
	* )
		echo "Erreur dans la saisie"
		;;
esac
done
