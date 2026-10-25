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
echo "Memory Usage:"
free -h

echo ""
echo "Disk Usage:"
df -h /

echo ""
echo "Monitoring completed!"
