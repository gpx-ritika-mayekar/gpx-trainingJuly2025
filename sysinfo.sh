#!/bin/sh 
echo "System Information"
echo "Current User : $(whoami)"
echo "System Name : $(hostname)"
echo "Operating System : $(uname -s)" 
echo "Number of CPU cores : $(nproc --all)"
# echo "$(grep MemTotal /proc/meminfo)"
echo "Ram size : $( free -h --giga | grep "Mem:" | awk '{print $2}')"
echo "*************************************"