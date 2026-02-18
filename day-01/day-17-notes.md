# Day 17 — Cron Jobs & Scheduling

## What I learned
- What cron is and why it is used
- How to schedule scripts automatically
- Why cron needs absolute paths
- How to redirect output and errors to logs
- How to debug cron jobs

## Cron job created
0 2 * * * /home/doru/cloud-engineer/day-01/scripts/backup_v2.sh --force >> /home/doru/cloud-engineer/day-01/backups/cron.log 2>&1

## Commands used
- crontab -e
- crontab -l
- env -i /bin/bash -c "script"
- cat

## Key concepts
- Cron runs without a user environment
- Absolute paths are required
- Logs are mandatory for debugging
- Automation must be non-interactive
- Scheduled jobs must be safe by default

## Problems I faced
-

## Fixes / Notes
- Cron cannot use ~
- Always log cron output
- Test scripts with env -i
