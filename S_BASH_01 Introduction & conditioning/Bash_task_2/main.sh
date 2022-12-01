#!/usr/bin/bash


source root-check.sh

new_port_from_cli=$1
source ./change-ssh.sh
ssh-change $new_port_from_cli

source ./disable-root.sh
disable-root

username=$2
source useradd.sh
useradd $username

source mycron.sh
