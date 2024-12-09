#!/bin/bash
echo "System Hostname: $(hostname)"
echo "operating system: $(lsb_release -d | cut -f2-)"
echo "Uptime: $(uptime -p)"
echo "Kernel Version: $(uname -r)"
echo "CPU Information: $(lscpu | grep 'Model name')"
echo "Memory Information: $(free -h | grep 'Mem')"
echo "IP and MAC Addresses: $(ip a | grep -E 'inet |ether')"
echo "Filesystem Utilization: $(df -h | grep -v tmpfs)"
echo "Filesystem Types: $(df -T | grep -v tmpfs)"
echo "Last 5 'error' lines from syslog:"
grep -i "error" /var/log/syslog | tail -n 5

