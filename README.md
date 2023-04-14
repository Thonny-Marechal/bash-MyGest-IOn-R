# Présentation du projet

Ce programme permet d’aider au quotidien les techniciens réseaux. 
En effet il permet de vérifier et consulter plusieurs informations essentielles au bon fonctionnement d’une configuration réseau.
L’objectif est donc de pouvoir gagner du temps pour la gestion de son parc informatique grâce à des  scripts en Bash. Mais on peut également gérer une base de données SQL


## Commencer lancer le projet ?

Pour lancer le projet, il faut souplement télécharger le dossier que j'ai publié dans mon GitHub et ensuite, il vous suffit d’aller directement dans le dossier myGest_IOnR via le terminal et ainsi l’exécuter avec la commande «./myGestIOnR.sh»


### Description

Je vais vous présenter les fonctionnalités du programme myGestIOnR.

Les choix durant la partie installation :

    • Création d'une base de données avec le nom de BDD de votre choix

    • Création d'un utilisateur SQL si vous le souhaitez

    • Message qui demande si vous êtes un serveur ou une machine

Les choix possibles dans gestion du parc : 

    • Consulter les données de la base de données
      - Le nom de la machine
      - Adresse Mac
      - Adresse IP
      - Masque
      - Type  ( machine, switch, serveur)
      
    • Ajouter des données de la base de données

    • Supprimer des données de la base de données

    • Modifier des données de la base de données


Les outils possibles dans Outils réseau : 

    • Tester une IP
      
    • Tester un port TCP
      
    • Consulter les IP actives
      
    • Générer un .txt depuis la base de données

    • Tester un DNS

### Répartition des tâches :

Pour pouvoir réaliser le projet nous nous sommes répartis les tâches car je n’étais pas seul, Leroy Théo et Tafroukte Noam m’ont accompagné sur ce projet et ensuite nous avons créé un Trello pour savoir qui devait faire quoi dans le projet.

Les tâches réparties :

    • Partie 1,4,5 : Maréchal Thonny
    • Partie 2,4,5 : Leroy Théo
    • Partie 4,5 : Tafroukte Noam

### Partie 1 – Gestion du parc

Cette mission consiste à créer une base de données pour pouvoir ainsi créer, ajouter, supprimer et modifier des informations pour gérer le parc informatique.

### Partie 2 – Outils réseau 

Cette mission avait pour but de pouvoir offrir des éléments qui seront utiles pour les techniciens réseaux. 
Ce sont donc des petits scripts en Bash qui ont été conçus afin de tester une IP, un port TCP, générer un .txt depuis la base de données et pour finir consulter les IP actives ou non de la base de données.

### Partie 3 – Installateur

Ici c’est l’installation des paquets au bon fonctionnement des scripts.
De ce fait, au lancement du MyGestIOnR.sh, il y aura une installation automatique des paquets.

### Partie 4 – Ajout de fonctionnalités

Par la suite, nous avons ajouté l'option tester un DNS dans outils réseau.

### Partie 5 – Gestion des versions et publications

Cette partie consiste à la création d'un profil GitHub afin de publier notre projet, avec une présentation complète.
