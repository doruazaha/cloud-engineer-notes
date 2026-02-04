# Day 38 – Log Rotation

Logs must not grow forever.

logrotate manages log lifecycle.

Key settings:

daily
rotate 7
compress

Monitoring must protect system health,
not destroy it via disk exhaustion.

logrotate refuses unsafe directories.

Use:

su username group

to rotate logs safely.
