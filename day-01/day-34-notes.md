# Day 34 – systemd Services

## What is systemd?

systemd is the Linux service manager.
It controls background services and startup processes.

Real servers run scripts as services, not manual commands.

---

## Creating a service

Service files live in:

/etc/systemd/system/

Example:

sudo nano /etc/systemd/system/health.service

---

## Service structure

[Unit]
Description=Service name
After=network.target

[Service]
Type=oneshot
ExecStart=/bin/bash /path/to/script.sh
User=username

[Install]
WantedBy=multi-user.target

---

## Important concepts

Type=simple
→ for long-running services (daemons)

Type=oneshot
→ for scripts that run once and exit

If a oneshot script uses Restart=always,
systemd will create a restart loop.

---

## systemd commands

Reload service database:

sudo systemctl daemon-reload

Start service:

sudo systemctl start service-name

Check status:

systemctl status service-name

View logs:

journalctl -u service-name

Reset failure counter:

sudo systemctl reset-failed service-name

Enable at boot:

sudo systemctl enable service-name

---

## Key learning

Scripts ≠ services

Services must match behavior:
- daemon → simple
- run once → oneshot

systemd is strict and production-focused.
It does not guess interpreters.
Always use:

ExecStart=/bin/bash script.sh

---

## Result

Health script successfully ran as a systemd service.
No restart loops.
Clean exit.
Production-safe automation pattern.
