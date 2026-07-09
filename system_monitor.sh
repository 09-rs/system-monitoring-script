#!/bin/bash

# =====================================
# System Monitoring Script
# =====================================

DISK_THRESHOLD=80
MEMORY_THRESHOLD=80
LOG_FILE="monitor.log"

echo "=================================="
echo "     SYSTEM MONITOR REPORT"
echo "=================================="
echo "Date: $(date)"
echo ""


# =====================================
# Disk Usage Monitoring
# =====================================

echo "Checking Disk Usage..."

disk_usage=$(df / | awk 'NR==2 {print $5}' | tr -d '%')

echo "Current Disk Usage: ${disk_usage}%"

if [ "$disk_usage" -ge "$DISK_THRESHOLD" ]; then
    echo "WARNING: Disk usage has exceeded ${DISK_THRESHOLD}%!"
    echo "$(date): Disk usage is ${disk_usage}%" >> "$LOG_FILE"
else
    echo "Disk usage is within the safe limit."
fi

echo ""

# =====================================
# Memory Usage Monitoring
# =====================================

echo "Checking Memory Usage..."

memory_usage=$(free | awk '/Mem:/ {printf("%.0f"), $3/$2 * 100}')

echo "Current Memory Usage: ${memory_usage}%"

if [ "$memory_usage" -ge "$MEMORY_THRESHOLD" ]; then
    echo "WARNING: Memory usage has exceeded ${MEMORY_THRESHOLD}%!"
    echo "$(date): Memory usage is ${memory_usage}%" >> "$LOG_FILE"
else
    echo "Memory usage is within the safe limit."
fi

echo ""
