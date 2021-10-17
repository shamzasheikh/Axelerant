
#!/bin/bash

filepath=$1

# This will give 5 unique IPs.
echo "Top 5 unique IPs:"
awk '{ print $1}' $filepath | sort | uniq -c | sort -nr | head -n 5
