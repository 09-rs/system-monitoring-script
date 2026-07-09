# System Monitoring Script

## Overview

This project is a Bash shell script that monitors important system resources and alerts the user when predefined thresholds are exceeded.

## Features

- Monitor disk usage
- Monitor memory usage
- Display top 5 CPU-consuming processes
- Log monitoring information to `monitor.log`
- Display clear warning messages when thresholds are exceeded

## Thresholds

| Resource | Threshold |
|----------|-----------|
| Disk Usage | 80% |
| Memory Usage | 80% |

## Requirements

- Linux/Ubuntu
- Bash Shell

## Usage

Make the script executable:

```bash
chmod +x system_monitor.sh
```

Run the script:

```bash
./system_monitor.sh
```

## Sample Output

```
==================================
SYSTEM MONITOR REPORT
==================================
Date: Wed Jul 9 ...

Checking Disk Usage...
Current Disk Usage: 1%
Disk usage is within the safe limit.

Checking Memory Usage...
Current Memory Usage: 24%
Memory usage is within the safe limit.

Top 5 CPU Consuming Processes

PID COMMAND %CPU %MEM
...
```

## Log File

Alerts and execution logs are stored in:

```
monitor.log
```
