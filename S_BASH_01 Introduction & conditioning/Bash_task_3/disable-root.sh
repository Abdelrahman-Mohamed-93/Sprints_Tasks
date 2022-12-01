#!/usr/bin/bash

disable-root()
{
sudo sed -i 's/^PermitRootLogin yes$/PermitRootLogin no/' /etc/ssh/sshd_config
}
#disable-root
