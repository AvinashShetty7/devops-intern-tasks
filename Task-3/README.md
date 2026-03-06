# Task 3: Container Resource Monitoring

## Objective
To automatically monitor Docker container CPU and memory usage and store logs with timestamps.

---

## Step 1: Create Monitoring Directory

sudo mkdir -p /opt/container-monitor/logs

---

## Step 2: Create Monitoring Script

sudo nano /opt/container-monitor/monitor.sh

Script content:

#!/bin/bash

timestamp=$(date "+%Y-%m-%d %H:%M:%S")

echo "Timestamp: $timestamp" >> /opt/container-monitor/logs/container.log

docker stats --no-stream --format "{{.Name}} CPU: {{.CPUPerc}} MEM: {{.MemUsage}}" >> /opt/container-monitor/logs/container.log

echo "---------------------------------" >> /opt/container-monitor/logs/container.log

---

## Step 3: Make Script Executable

sudo chmod +x /opt/container-monitor/monitor.sh

---

## Step 4: Test the Script

sudo /opt/container-monitor/monitor.sh

View logs:

cat /opt/container-monitor/logs/container.log

---

## Step 5: Automate Using Cron

Open cron editor.

crontab -e

Add the following line to run every minute.

* * * * * /opt/container-monitor/monitor.sh

---

## Expected Outcome

The monitoring script runs automatically every minute and records container CPU and memory usage with timestamps.