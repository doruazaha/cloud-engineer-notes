# Day 42 – Email Alerting

Monitoring without alerting is passive.

Objective:
Send email when health script detects WARNING.

Steps:

1. Install mail system
sudo apt install mailutils -y
(Choose: Local only)

2. Define alert email in script
ALERT_EMAIL="your_email@example.com"

3. Add alert logic:

if echo "$OUTPUT" | grep -q "WARNING"; then
echo "$OUTPUT" | mail -s "System Health Alert" "$ALERT_EMAIL"
fi

4. Test by lowering threshold temporarily

5. Cron automatically triggers alerts every 5 minutes

Key Concept:
Monitoring detects.
Alerting notifies.
Automation executes.
Logging records.

Commit wording:
Day 42 - Add email alerting to health monitoring
