#!/bin/bash

echo "Content-type: text/html"
echo ""

# Read and parse POST data
read -n $CONTENT_LENGTH POST_DATA

# Extract pulse content
PULSE=$(echo "$POST_DATA" | sed -n 's/^pulse=//p' | sed 's/+/ /g' | sed 's/%20/ /g' | sed 's/%0D%0A/<br>/g')

# Timestamp
TIMESTAMP=$(date -u +"%Y-%m-%d %H:%M:%S UTC")

# Append to pulse log
echo "<p><strong>[$TIMESTAMP]</strong> $PULSE</p>" >> /var/www/html/pulse_log.html

# Redirect back
echo "<html><head><meta http-equiv='refresh' content='0; URL=/pulse_log.html'></head></html>"
