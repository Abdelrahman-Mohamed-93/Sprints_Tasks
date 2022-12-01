#!/usr/bin/bash

user-with-id()
{
	sudo useradd -u 30000 manager 2> /dev/null
}
user-with-id
