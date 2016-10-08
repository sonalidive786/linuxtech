#!/bin/bash

exho "server report"

#HOSTNAME=localhost

echo server bname $(hostname)

echo $line

echo "disk partions"

df -hTP --total

echo $line

total_cpu=$( grep -c processor  /proc/cpuinfo )

echo "CPUCores : $total_cpu"

total_mem=$(free -m | awk '/Mem/ {print $2, "MB"}')
echo "mem: $total_mem"

echo "server ip : $(hostname -i)"
