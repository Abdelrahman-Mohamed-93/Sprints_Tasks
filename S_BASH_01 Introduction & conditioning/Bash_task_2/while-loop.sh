#!/usr/bin/bash


file-waiting()
{
	while [ ! -e $1 ]
	do
		sleep 10
		echo "Still waiting for the file to exist"
	done
	echo "File exists and loop is exiting"
}
file-waiting $1
