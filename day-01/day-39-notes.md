# Day 39 – Permissions & Service Users

Linux is multi-user by design.

Every file belongs to an owner.

Scripts fail if they try to write to files they don’t own.

Permission errors are security working correctly,
not system bugs.

Service accounts must own their own logs.

Correct ownership:

sudo chown cloudserver:cloudserver health.log

A service should never write to files owned by another user.

This prevents cross-user interference.

Running scripts via SSH changes identity:

ssh cloudserver@localhost "command"

The script runs as cloudserver, not doru.

Permissions follow the executing user,
not the person typing the command.

Logs are read-only records.

They are meant to be viewed:

cat
less
tail

Editing logs requires admin override:

sudo nano

Production systems treat logs as evidence.

This day simulated real server behavior:

service accounts
file ownership
permission isolation
remote execution
security boundaries
