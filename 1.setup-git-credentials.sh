#!/bin/bash
#
##################################################################################################################
# 
# This will setup the GitHub credentials and add them to the local .cache/git directory
# 
##################################################################################################################

echo
tput setaf 1
echo "################################################################"
echo "#####                     Choose wisely                     ####"
echo "################################################################"
tput sgr0
echo
echo "Select for which user you want to create a local socket connected to GitHub:"
echo
echo "0.  Do nothing"
echo "1.  verona-hub"
echo "Type the number..."

read CHOICE

case $CHOICE in

    0 )
      echo
      echo "########################################"
      echo "Nothing was done as per your request"
      echo "########################################"
      echo
      ;;

    1 )
			git config --global pull.rebase false
			git config --global push.default simple
			git config --global user.name "verona-hub"
			git config --global user.email "68257343+verona-hub@users.noreply.github.com"
			sudo git config --system core.editor atom
			git config --global credential.helper cache
			git config --global credential.helper 'cache --timeout=32000'
      ;;
    * )
    
      echo "#################################"
      echo "Choose the correct number"
      echo "#################################"
      ;;
esac

echo "###########################################################"
echo "Github credentials have been set"
echo "Delete the ~/.cache/git folder if you made a mistake or"
echo "if you want to switch to your personal github"
echo "###########################################################"

echo "################################################################"
echo "###################    T H E   E N D      ######################"
echo "################################################################"
