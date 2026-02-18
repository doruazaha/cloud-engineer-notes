# Day 32 - Remote command execution

Run remote command: 
ssh user@server "command"

Example:
ssh cloudserver@localhost "whoami"

Multiple commands 
ssh cloudserver@localhost "pwd && date"

Create remote fie:
ssh cloudserver@localhost "echo text > file"

Used for automation and server control

