
#!/bin/bash
# Day 13: Mini automation script

echo "Enter environment name (dev / prod):"
read env

if [ "$env" = "prod" ]; then
echo "⚠ WARNING: You are working in PRODUCTION!"
elif [ "$env" = "dev" ]; then
echo "You are working in development. Safe to test."
else
echo "Unknown environment."
fi

