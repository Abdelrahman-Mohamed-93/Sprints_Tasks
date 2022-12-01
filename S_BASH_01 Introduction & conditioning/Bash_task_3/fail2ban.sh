#!/usr/bin/bash

fail2ban()
{
	sudo yum -y install fail2ban
	sudo systemctl enable fail2ban.service
	sudo systemctl start fail2ban.service
}
fail2ban
