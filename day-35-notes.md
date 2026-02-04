# Day 35 – systemd Timers

Timers replace cron in modern Linux.

Timer file:
health.timer

[Timer]
OnBootSec=30
OnUnitActiveSec=60
Unit=health.service

systemd timer triggers a service automatically.

Commands:

sudo systemctl daemon-reload
sudo systemctl enable health.timer
sudo systemctl start health.timer

Check timers:

systemctl list-timers

View logs:

journalctl -u health.service

Timers = modern scheduling
