#!/usr/bin/bash


root_check()
{
sudo -v 2> /dev/null
#This line is essential as a non-root / non-sudo user can still return $? as 0 if I did not run this line ..
#Running it would either return an error message and after that a non-root/non-sudo user would return 1 for $? or it would not return anything in case of a root or ask for a password if it is a sudo-user

if [ $? == 0 ]
# Returns a 0 for a root / sudoer or 1 for a non-root-privilaged-user
then
	echo "I am a root/root-privilaged-user ... Let's run ur script"
else
	echo "Unfortunately I am no root & this script has to be run by a root/root-privilaged-user"
fi
}
root_check
