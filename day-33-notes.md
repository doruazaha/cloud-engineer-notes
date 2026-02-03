# Day 33 - Safe Deployment Pattern
 Create local script
chmod +x script

Copy to server:
scp script user@server:/tmp/

Move and run:
ssh user@server "mv /tmp/script ~/ && bash ~/script"

Pattern:
local -> /tmp -> move -> execute

Used for safe deployments
