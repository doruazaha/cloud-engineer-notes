# Day 1 - Linux Fundamentals

## Commands Learned
- pwd -it shows where you are in linux - which folder
- cd - 
- whoami- Shows the logged in user currently
- ls l- - shows information in relation to where you are 
- ls -la - also shows hidden files

## Filesystem
-what is / ? this is root. its the main place in linux . everything is in root and prevents other users to break into the system 
- what is ~ ?  this is the shortcut to  home directory. This is where you write permissions. Cloud servers assume users work from here

## Permissions
- What rwx mean -  r = read , w = write x- execute ( run as a program)
- What 644 means - this permissions means that the owner can read and write, the group can only read and so can the others. This is to be used for files that should not be edited by others
- What 600 means This permission gives no access to group or others. Owner can read and write

## One thing I broke today
- What happened
- Why it happened


# Day 2 

- what root is - root is the main and most powerful user  in linux and it owns all premission for changes and giving permissions
- sudo - gives temporary root permissions for one command only
- sudo is safer because permissions are temporary and if you destroy something it is limited to one line. Actions are logged and can be checked later during audits

# Day 3

- Only the owner or root can change permissions
- If a file is owned by another user, chmod fails without sudo
- ownership + permission together determine access
- Example: serive.txt owned by root cannot be chmoded by normal user

# Day 4 

## Process

- A process is a program that runs on linux and every command written or service started is a process.
- All processes have an owner , a PID and a stated of functioning

## Service
- A service is a process that runs in the background and starts automatically at boot or when needed.
- often runs  under a specific user and not as root. Examples : cron, ssh, nginx
- to start or stop a service , the commands to use are : sudo systemctl start <service>, stop <service>, status <service>.


- You can check a running process with commands : ps aux

# Day 5

- Connection refused happens when SSH server is not running
- SSH client can try to connect, but server must be listening
sudo apts install openssh-server 
sudo systemctl start ssh
- Always check status with : 
sydo systemctl status ssh

