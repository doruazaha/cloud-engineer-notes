
# Day 25 – Linux Boot Process and systemd Targets

## Boot sequence
- BIOS / UEFI
- GRUB bootloader
- Linux kernel
- systemd (PID 1)

## Targets
- graphical.target (desktop)
- multi-user.target (server)
- rescue.target
- emergency.target

## Commands
- systemctl get-default
- systemctl list-units --type=target
- systemctl isolate TARGET

## Cloud relevance
- Servers boot to multi-user.target
- Faster startup
- Fewer services
