#!/bin/bash
serveur=0
client=0
#import des configs et fonctions
source outilsRx/fonction.sh
source myGest_IOnR/config.sh >/dev/null 2>/dev/null

if [[ $serveur -eq 0 && $client -eq 0 ]];then
bash install/install.sh
fi

bash menu/menu.sh

