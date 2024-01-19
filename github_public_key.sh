#!/bin/bash

read -p "skip ssh process? (Y/N):" SKIP_SSH

#################################################
#               creating ssh key                #
#################################################
if [ $SKIP_SSH=="N" ]; then
    echo "Creating ssh key i suggest NO PASSWORD"
    read -p "put in username:" USERNAME
    EMAIL=$USERNAME"@strava.com"
    ssh-keygen -t ed25519 -C $EMAIL
fi


#################################################
#               creating ssh config            #
#################################################
if [ $SKIP_SSH=="N" ]; then
    echo "first we are going to check if your ssh config exists"
    if [ test -f ~/.ssh/config ]; then 
        echo "File exists."
        echo "Since file exhist I am assuming it is configured correctly"
    else
        echo "File DOES NOT EXIST creating file now"
        echo "-------------------------------------"
        echo
        mkdir ~/.ssh/
        touch ~/.ssh/config
        path=$(pwd)
        cat $path/ssh_config.txt >> ~/.ssh/config
        echo "adding to keychain "
        ssh-add --apple-use-keychain ~/.ssh/id_ed25519
    fi
fi

#################################################
#         creating ssh config via github        #
#################################################
if [ $SKIP_SSH=="N" ]; then
    echo "will now copy the new key and allow you to create ssh via github UI"
    pbcopy < ~/.ssh/id_ed25519.pub
    echo "follow bellow link to finish via UI and press enter"
    echo "https://docs.github.com/en/authentication/connecting-to-github-with-ssh/adding-a-new-ssh-key-to-your-github-account" 
    read -p "Press enter to continue"
fi





