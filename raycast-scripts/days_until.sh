#!/bin/bash

# Required parameters:
# @raycast.schemaVersion 1
# @raycast.title Days Until
# @raycast.mode fullOutput

# Optional parameters:
# @raycast.icon ⏰

# Get today's date in seconds since the epoch
today=$(date +%s)

# Set target date (December 21, 2024) in seconds since the epoch
target=$(date -j -f "%Y-%m-%d" "2024-12-21" +%s)
target_name="🎓"

# Calculate the difference in seconds and convert to days
days_left=$(( (target - today) / 86400 ))

# Display the result
echo "There are $days_left days until $target_name!"

