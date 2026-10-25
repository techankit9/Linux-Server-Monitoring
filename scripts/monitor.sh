

#!/bin/bash

echo "================================"
echo "   LINUX SERVER MONITORING"
echo "================================"

echo ""
echo "Hostname:"
hostname

echo ""
echo "System Uptime:"
uptime -p

echo ""
echo "CPU Usage:"
top -bn1 | grep "Cpu(s)"

echo ""
echo "Memory Usage:"
free -h

MEMORY_USAGE=$(free | awk '/Mem:/ {printf "%.0f", $3/$2 * 100}')
echo "Memory Usage: ${MEMORY_USAGE}%"

if [ "$MEMORY_USAGE" -gt 80 ]; then
    echo "WARNING: High memory usage!"
else
    echo "Memory status: Normal"
fi

echo ""
echo "Disk Usage:"
df -h /

DISK_USAGE=$(df / | awk 'NR==2 {gsub("%","",$5); print $5}')
echo "Disk Usage: ${DISK_USAGE}%"

if [ "$DISK_USAGE" -gt 80 ]; then
    echo "WARNING: High disk usage!"
else
    echo "Disk status: Normal"
fi

echo ""
echo "Monitoring completed!"



