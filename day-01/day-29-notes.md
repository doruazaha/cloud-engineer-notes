
# Day 29 – SSH Keys

SSH uses key-based authentication

private key = secret
public key = shared with server

Generate key:
ssh-keygen -t ed25519

Keys stored in:
~/.ssh/

Permissions:
700 .ssh folder
600 private key
644 public key

SSH refuses insecure keys

Never share private key
