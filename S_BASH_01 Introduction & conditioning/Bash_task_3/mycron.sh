#!/usr/bin/bash

cronjob()
{
	sudo mkdir -p /root/backups
	croncmd="sudo tar -cf /root/backups/reports-$(date +%W-%w).tar /home/$(whoami)/Reports"
	cronjobs="00 01 * * 1-5 $croncmd"
	( crontab -l | grep -v -F "$croncmd" ; echo "$cronjobs" ) | crontab -
}
cronjob

#crontab - would add both of the items in the first pipeline
#-v would grep anything other than the specified
#-F would specify an exact specific phrase

#( crontab -l | grep -v -F "$croncmd" ) | crontab -
#This command would be used to delete just a specific job

