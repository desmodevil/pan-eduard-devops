#!/bin/bash
# папка, где лежит скрипт -> работает из любого места (и в Jenkins тоже)
SCRIPT_DIR="$(cd "$(dirname "$0")" && pwd)"
INFO_FILE="$SCRIPT_DIR/../Pan_Eduard_info.txt"

echo "=============================="
echo "Student Information"
echo "=============================="
echo ""
echo "Name: Eduard"
echo "Surname: Pan"
echo "Group: IT2-2312"
echo "Student ID: 37619"
echo ""
echo "=============================="
echo "System Information"
echo "=============================="
echo ""
echo "Username: $(whoami)"
echo "Hostname: $(hostname)"
echo "Current Date: $(date)"
echo "Operating System: $(uname -o) $(uname -r)"
echo "Disk Usage: $(df -h / | awk 'NR==2 {print $3 " used of " $2 " (" $5 ")"}')"
echo "Memory Usage: $(free -h | awk '/Mem:/ {print $3 " used of " $2}')"
echo ""

if [ -f "$INFO_FILE" ]; then
    echo "Student information file exists."
else
    echo "Student information file does not exist."
fi
