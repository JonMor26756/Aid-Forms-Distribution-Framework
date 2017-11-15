#! /bin/bash
#
#
# turn ssh root access on and start ssh
sed -i "s/PermitRootLogin without-password/PermitRootLogin yes/g" /etc/ssh/sshd_config
service ssh start
#
# set default root password to N
echo -e 'password\npassword' | passwd
#
# nmap scan all other nodes on the docker network, add to ssh known_hosts
initialScan=$(nmap 172.18.0.0/24 | grep node | awk -F'(' '{print$2}')
parsedScan=$(sed 's/)//g' <<< $initialScan)
mkdir -p /root/.ssh/
ssh-keyscan $parsedScan >> /root/.ssh/known_hosts
#
#


tail -f /dev/null
