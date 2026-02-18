
# Day 19 — CPU and Memory Monitoring

## Goal
Build scripts that monitor CPU and memory usage and log warnings when thresholds are exceeded.

## Key Concepts
- top
- free
- awk
- sed
- if conditions
- Numeric comparison
- Logging
- Threshold alerts

## What I built
- cpu_check.sh: monitors CPU usage
- memory_check.sh: monitors memory usage

## Lessons learned
md
- Learned how to check CPU usage using top
- Parsed CPU idle percentage and converted it to usage
- Used bc for floating-point comparisons
- Calculated memory usage percentace
- Implemented threshold-based warnings
- Logged OK and WARNING states with timestamps
- Build cron-ready monitoring scripts
