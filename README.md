# bash-MyGest-IOn-R
projet 1er année BTS SIO option SISR
# Pr�sentation du projet

Ce programme permet d�aider au quotidien les techniciens r�seaux. 
En effet il permet de v�rifier et consulter plusieurs informations essentielles au bon fonctionnement d�une configuration r�seau.
L�objectif est donc de pouvoir gagner du temps pour la gestion de son parc informatique gr�ce � des  scripts en Bash. Mais on peut �galement g�rer une base de donn�es SQL


## Commencer lancer le projet ?

Pour lancer le projet, il faut souplement t�l�charger le dossier que j'ai publi� dans mon GitHub et ensuite, il vous suffit d�aller directement dans le dossier myGest_IOnR via le terminal et ainsi l�ex�cuter avec la commande �./myGestIOnR.sh�


### Description

Je vais vous pr�senter les fonctionnalit�s du programme myGestIOnR.

Les choix durant la partie installation :

    � Cr�ation d'une base de donn�es avec le nom de BDD de votre choix

    � Cr�ation d'un utilisateur SQL si vous le souhaitez

    � Message qui demande si vous �tes un serveur ou une machine

Les choix possibles dans gestion du parc : 

    � Consulter les donn�es de la base de donn�es
      - Le nom de la machine
      - Adresse Mac
      - Adresse IP
      - Masque
      - Type  ( machine, switch, serveur)
      
    � Ajouter des donn�es de la base de donn�es

    � Supprimer des donn�es de la base de donn�es

    � Modifier des donn�es de la base de donn�es


Les outils possibles dans Outils r�seau : 

    � Tester une IP
      
    � Tester un port TCP
      
    � Consulter les IP actives
      
    � G�n�rer un .txt depuis la base de donn�es

    � Tester un DNS

### R�partition des t�ches�:

Pour pouvoir r�aliser le projet nous nous sommes r�partis les t�ches car je n��tais pas seul, Mar�chal Thonny et Tafroukte Noam m�ont accompagn� sur ce projet et ensuite nous avons cr�� un Trello pour savoir qui devait faire quoi dans le projet.

Les t�ches r�parties :

    � Partie 1,4,5 : Mar�chal Thonny
    � Partie 2,4,5 : Leroy Th�o
    � Partie 4,5 : Tafroukte Noam

### Partie 1 � Gestion du parc

Cette mission consiste � cr�er une base de donn�es pour pouvoir ainsi cr�er, ajouter, supprimer et modifier des informations pour g�rer le parc informatique.

### Partie 2 � Outils r�seau 

Cette mission avait pour but de pouvoir offrir des �l�ments qui seront utiles pour les techniciens r�seaux. 
Ce sont donc des petits scripts en Bash qui ont �t� con�us afin de tester une IP, un port TCP, g�n�rer un .txt depuis la base de donn�es et pour finir consulter les IP actives ou non de la base de donn�es.

### Partie 3 � Installateur

Ici c�est l�installation des paquets au bon fonctionnement des scripts.
De ce fait, au lancement du MyGestIOnR.sh, il y aura une installation automatique des paquets.

### Partie 4 � Ajout de fonctionnalit�s

Par la suite, nous avons ajout� l'option tester un DNS dans outils r�seau.

### Partie 5 � Gestion des versions et publications

Cette partie consiste � la cr�ation d'un profil GitHub afin de publier notre projet, avec une pr�sentation compl�te.
