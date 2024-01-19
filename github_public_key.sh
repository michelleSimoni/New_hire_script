#!/bin/bash

read -p "skip ssh process? (Y/N):" SKIP_SSH

echo $SKIP_SSH
#################################################
#               creating ssh key                #
#################################################
if ! [ $SKIP_SSH=="Y" ]; then
echo "in if"
# echo "Creating ssh key i suggest NO PASSWORD"
# read -p "put in username like msimoni:" USERNAME
# EMAIL=$USERNAME"@strava.com"
# ssh-keygen -t ed25519 -C $EMAIL
fi



#################################################
#               creating ssh config            #
#################################################

# echo "Hello welcom to a quick onboarding script"
# echo "first we are going to check if your ssh config exists"

# if [ test -f ~/.ssh/config ]; then 
#     echo "File exists."
#     echo "Since file exhist I am assuming it is configured correctly"
# else
#     echo "File DOES NOT EXIST creating file now"
#     echo "-------------------------------------"
#     echo
#     mkdir ~/.ssh/
#     touch ~/.ssh/config
#     path=$(pwd)
#     cat $path/ssh_config.txt >> ~/.ssh/config
# fi



# echo "starting script"
# read -p "put in username like msimoni:" USERNAME
# EMAIL=$USERNAME"@strava.com"

# ssh-keygen -t ed25519 -C "$EMAIL"
