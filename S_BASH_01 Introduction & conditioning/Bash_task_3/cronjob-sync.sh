#!/usr/bin/bash


cronjob-sync()
{
        sudo mkdir -p /home/manager/audit/reports
        croncmd="sudo rsync -r /home/$(whoami)/Reports/ /home/manager/audit/reports"
        cronjobs="00 02 * * 1-5 $croncmd"
        ( crontab -l | grep -v -F "$croncmd" ; echo "$cronjobs" ) | crontab -
}
cronjob-sync
