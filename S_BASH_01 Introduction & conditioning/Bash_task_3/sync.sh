#!/usr/bin/bash


syncing()
{
	sudo mkdir -p /home/manager/audit/reports
	sudo rsync -r /home/$(whoami)/Reports/ /home/manager/audit/reports
}
syncing
