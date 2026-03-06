#!/bin/bash

# Description :script for container log
# AUTHOR :Avinasha Shetty
# DATE  : 06-03-2026
# Name :monitor-cont.sh

PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
timestamp=$(date "+%Y-%m-%d %H:%M:%S")

docker stats --no-stream --format "CONTAINER-NAME:{{.Name}},      CPU-USAGE(%):{{.CPUPerc}},       MEMORY-USAGE:{{.MemUsage}}" >> /opt/container-monitor/logs/container.log

echo "Timestamp: $timestamp" >> /opt/container-monitor/logs/container.log
echo "---------------------------" >> /opt/container-monitor/logs/container.log


