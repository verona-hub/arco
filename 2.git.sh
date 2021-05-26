#!/bin/bash
#set -e

#######################################################################
#
# This shell will push your changes to GitHub
#
#######################################################################
# git commit --amend -m "more info"
# git push --force origin

# checking if I have the latest files from github
echo "Checking for newer files online first"
git pull

# This will backup everything inside the project folder
git add --all .

# Give the commit a comment
echo "####################################"
echo "Write your comment!"
echo "####################################"

read input

# Committing to the local repository with a message
git commit -m "$input"

# Push the local files to github
git push -u origin main


echo "################################################################"
echo "###################    Git Push Done      ######################"
echo "################################################################"
