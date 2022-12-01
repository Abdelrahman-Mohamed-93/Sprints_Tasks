#!/usr/bin/bash

epel()
{
	sudo yum install epel-release
	sudo yum-config-manager --enable epel
}
epel
