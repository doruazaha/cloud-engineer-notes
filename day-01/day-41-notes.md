# Day 41 – Log Rotation

Logs must not grow forever.

logrotate manages log lifecycle.

Key points:

- Install logrotate: `sudo apt install logrotate -y`
- Custom config: `/etc/logrotate.d/cloud-engineer`
- Use `su doru doru` to fix “insecure permissions”
- Example config:

/home/doru/cloud-engineer/day-01/backups/*.log {
    su doru doru
    daily
    rotate 7
    compress
    missingok
    notifempty
    create 0644 doru doru
}

- Test manually: `sudo logrotate -f /etc/logrotate.d/cloud-engineer`
- Automatic daily rotation handled by system cron

Monitoring must protect system health without filling disks.

Commit wording:  
`Day 41 - Implement log rotation using logrotate with su directive`
