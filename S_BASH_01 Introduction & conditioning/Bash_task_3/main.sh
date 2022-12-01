#!/usr/bin/bash

source ./root-check.sh

new_port_from_cli=$1
source ./change-ssh.sh
ssh-change $new_port_from_cli

source ./disable-root.sh
disable-root


source groupadd.sh


username=$2
password=$3
source user-creation.sh
user-add $username $password

source reports.sh

source update.sh

source epel.sh

source fail2ban.sh

source mycron.sh

source user-with-id.sh

source cronjob-sync.sh
