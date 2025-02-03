#!/bin/bash

echo "System Health Report"
echo "--------------------"

# CPU Usage
echo "CPU Usage:"
top -bn1 | grep "Cpu(s)" | awk '{print $2 + $4"%"}'

# Memory Usage
echo "Memory Usage:"
free -m | awk 'NR==2{printf "Used: %s MB / Total: %s MB (%.2f%%)\n", $3, $2, $3*100/$2 }'

# Disk Usage
echo "Disk Usage:"
df -h | awk '$NF=="/"{printf "Used: %s / Total: %s (%s)\n", $3, $2, $5}'
