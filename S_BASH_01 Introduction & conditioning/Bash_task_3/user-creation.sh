#!/usr/bin/bash

user-add()
{
	sudo useradd -g Audit -p $(perl -e 'print crypt($ARGV[0], "password")' "$2") "$1"
}

