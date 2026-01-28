
# Day 26 – Processes, Jobs, Signals, and Background Tasks

## Foreground vs Background
- Foreground blocks terminal
- Background (&) frees terminal
- jobs, fg, bg commands

## nohup
- Allows process to continue after logout
- Logs go to nohup.out

## Signals
- SIGINT (2) → Ctrl+C, polite stop
- SIGTERM (15) → graceful stop
- SIGKILL (9) → force stop
- kill PID or kill -9 PID

## Relation to cron/systemd
- Cron jobs run in background
- PID assigned for each job
- systemd can restart daemons automatically
