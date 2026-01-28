
# Day 24 – Services, systemd, and Daemons

## Key concepts
- Daemons run in the background
- systemd manages services
- Services can start at boot or manually

## Important commands
- systemctl status SERVICE
- systemctl start SERVICE
- systemctl stop SERVICE
- systemctl restart SERVICE
- systemctl enable SERVICE
- systemctl disable SERVICE

## Logs
- journalctl -u SERVICE
- journalctl -f

## Why it matters
- Manage servers
- Debug failures
- Control applications
