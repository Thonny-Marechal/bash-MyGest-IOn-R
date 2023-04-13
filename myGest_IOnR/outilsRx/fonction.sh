#!/bin/bash
serveur=0
# fonction pour afficher les titres
function afficheTitre () {
    if [[ $serveur -eq 0 ]]
    then
        figlet $1 | lolcat
    else
        figlet $1
    fi
}
function estUneIP () {
ipnbdot=$(echo -n $1|grep -o "\."|wc -l)

if (( $ipnbdot == 3 )); then
    compteur=0
for((i=1;i<5;i++))
do
    octet=$(echo $1|cut -d. -f$i)
if (( $octet >= 0 && $octet <=255 )); then
    compteur=$compteur+1
fi
done
    if (( $compteur == 4 )); then
    quitter=0
    return 0
else
    echo "Erreur dans la saisie"
    return 1
fi
else
    echo "Erreur dans la saisie"
    return 1
fi
}