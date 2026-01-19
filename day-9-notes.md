# Day 9

## Goal of today
To connect my existing local Git repository to an existing GitHub repository and succesffully push and pull commits.


# What I learned today

 - How to check if SSH authentification work with GitHub
 - How to inspect and fix an existing Git remote
 - How to connect a local repostiroy to existing GitHub repository 
 - How to push my entire local commit history to GitHub
 - How to understand Git pysh output mesasges

## Commands practiced

# Test SSH connection
ssh -T git@github.com

# Check current remotes
git remote -v

# Remove wrong remote ( if needed)
git remote remove origin

# Add correct remote
git remote add origin git@github.com@:YOURUSERNAME/cloud-engineer-notes.git

# Check branch to main if needed
git branch -M main

# Push local history of GitHub
git pus -u origin main

# Pull from GitHub
git pull origin main

## Key concepts


- A "remote" connects my local Git repository to a GitHub repository

- "origin" is the default name for the main remote

- SSH is used for secure authentication with GitHub

- git push uploads local commits to GitHub

- git pull downloads commits from GitHub to local

- git remote -v shows exactly where my repo is connected


---


## Understanding the push output


When I saw:


- Enumerating objects

- Counting objects

- Compressing objects

- Writing objects


This means:


- Git was packaging my commits

- Compressing them for transfer

- Sending them to GitHub successfully


This output means the push worked.


---


## Problems I faced


- Remote origin already existed

- I could not see files immediately on GitHub

- Confusion about whether the push succeeded


---


## Fixes / Notes


- Always check remote with: git remote -v

- Always check branch with: git branch

- If push shows "Writing objects", the push succeeded

- If files are not visible, refresh GitHub and check the correct branch


---


## Final understanding


Today I successfully connected:


Local Git  →  GitHub Repository


I can now:

- Push my work to GitHub

- Pull changes from GitHub

- Verify connections safely before pushing


This is a core skill for cloud engineering.

