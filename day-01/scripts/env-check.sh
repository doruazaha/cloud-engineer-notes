
#!/bin/bash
# Day 14: Environment safety checker

check_env() {
if [ "$1" = "prod" ]; then
echo "🚨 DANGER: You are targeting PRODUCTION!"
elif [ "$1" = "dev" ]; then
echo "✅ Safe: Development environment."
else
echo "⚠ Unknown environment: $1"
fi
}

echo "Enter environment name (dev / prod):"
read env

check_env "$env"
