
# Day 23 – Linux Processes and Signals

## Key concepts
- A process is a running program
- Each process has a PID
- Linux controls processes via signals

## Important commands
- ps aux
- top
- kill PID
- kill -9 PID
- pkill name
- sleep 300
- Ctrl+C

## Signals
- SIGTERM (15): polite stop
- SIGKILL (9): force stop
- SIGINT (2): interrupt

## Why it matters
- Stop stuck scripts
- Debug high CPU
- Recover broken servers
