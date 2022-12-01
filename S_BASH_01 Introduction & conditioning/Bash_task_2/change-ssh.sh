#!/usr/bin/bash

#new_port_from_cli=$1
ssh-change()
{
new_port=$1
sudo sed -i "s/^#Port 22$/Port ${new_port}/" /etc/ssh/sshd_config
#The double quotes are necessairy to call a variable in a sed
#The variables are necessairy as it did not work with the $1 on its own
sudo semanage port -a -t ssh_port_t -p tcp ${new_port} 2> /dev/null
}
#ssh-change ${new_port_from_cli}
