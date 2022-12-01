#!/usr/bin/bash

report-creation()
{
for i in {01..12}
do
	if [ $i == 04 ] || [ $i == 06 ] || [ $i == 09 ] || [ $i == 11 ]
	then
		sudo mkdir -p /home/$(whoami)/Reports
		sudo touch /home/$(whoami)/Reports/report-2022-$i-{01..30}
		sudo chmod 660 /home/$(whoami)/Reports/report-*
		sudo chown $(whoami): /home/$(whoami)/Reports/report-*
	elif [ $i == 02 ]
	then
		sudo mkdir -p /home/$(whoami)/Reports
		sudo touch /home/$(whoami)/Reports/report-2022-$i-{01..29}
		sudo chmod 660 /home/$(whoami)/Reports/report-*
		sudo chown $(whoami): /home/$(whoami)/Reports/report-*
	else
		sudo mkdir -p /home/$(whoami)/Reports
		sudo touch /home/$(whoami)/Reports/report-2022-$i-{01..31}
		sudo chmod 660 /home/$(whoami)/Reports/report-*
		sudo chown $(whoami): /home/$(whoami)/Reports/report-*
	fi

done
}
#the -p would make it check if the dir exists first and would not create it if it exists
#username: the column after the username would change the group automatically to be owned by the group of the username provided


report-creation
