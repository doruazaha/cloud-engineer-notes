
# Day 22 – Linux Permissions & Ownership

## Key concepts
- Linux permissions control who can read, write, execute
- Permissions apply to: user, group, others
- Scripts must be executable to run

## Commands
- ls -l
- chmod u+x file.sh
- chmod 755 file.sh
- sudo chown user:group file

## Why it matters
- Prevents accidental damage
- Foundation of cloud security (IAM)

## Script execution
- bash script.sh -> execute bit not required
- ./script.sh -> execute bit Required
- cron and services use direct execution
