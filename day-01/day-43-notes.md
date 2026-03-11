
# Day 43 – Network Diagnostics

Concept:
Services fail due to DNS, connectivity, ports, firewall, or application failure.

Tools introduced:
ip
ping
ss
curl
ps

Practical lab:
Run local web server using Python:

python3 -m http.server 8080

Test service:

curl http://localhost:8080

Check listening ports:

ss -tulnp | grep 8080

Troubleshooting approach:

1. Test connectivity
2. Check open ports
3. Verify running process

Key lesson:
When a service fails, verify layers step by step.
