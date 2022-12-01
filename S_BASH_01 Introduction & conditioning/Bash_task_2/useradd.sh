#!/usr/bin/bash


useradd()
{
	sudo useradd $1
	echo "user $1 has been created. Kindly provide password for the newly added user"
	sudo passwd $1
	echo "Password successfully updated"
	echo "Do u want the new user to be added to the sudoer file? [y/n]"
	read answer
	if [[ "$answer" == "y" ]] || [[ "$answer" == "Y" ]]
	then
		sudo usermod -aG wheel $1
		echo "The user has root privilages now"
	elif [[ "$answer" == "n" ]] || [[ "$answer" == "N" ]]
	then
		echo "As instructed, user will not be granted sudo privilages"
	else
		echo "Unrecognized entry. The user can still be added to the sudoer file manually using visudo command"
	fi
}
#useradd $1
