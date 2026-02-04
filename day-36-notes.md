# Day 36 – Alerting System

Monitoring should separate logs from alerts.

alerts.log stores only critical events.

Example logic:

if threshold exceeded → write alert

Alert pipeline:

metrics → evaluate → alert

This simulates real monitoring systems.

Folder structure:

alerts/
  alerts.log

Alerts should be high signal, low noise.
