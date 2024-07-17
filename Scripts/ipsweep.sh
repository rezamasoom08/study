#!/bin/bash

if [ "$1" == "" ]
then
echo "You forgot an IP address!"
echo "Syntax: ./ipsweep.sh 192.168.4"

else
for ip in `seq 1 254`; do
ping -c 1 $1.$ip | grep "64 bytes" | cut -d " " -f 4 | tr -d ":" &

# You need to provide IP address as an argument in CLI e.g. ./ipsweep.sh 192.168.4

done
fi



// To run nmap scan using a file as input with IP addresses

for ip in $(cat ip.txt); do nmap $ip; done