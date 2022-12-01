#!/usr/bin/bash


update-upgrade()
{
	sudo yum -y update
	sudo yum -y upgrade
}
update-upgrade

#where upgrade deletes the obsolete packages and update preserve them
