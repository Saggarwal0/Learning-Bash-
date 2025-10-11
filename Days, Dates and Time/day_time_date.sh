#!/bin/bash

# ANSI color codes (escaped properly for Git Bash)
RED=$'\e[0;31m'
YELLOW=$'\e[1;33m'
GREEN=$'\e[0;32m'
NC=$'\e[0m' # No Color

# Get current day, time, and date
day=$(date +"%A")
time=$(date +"%I:%M:%S %p")
date=$(date +"%B %d, %Y")

# Display each in color
echo -e "${RED}Day of the week: $day${NC}"
echo -e "${YELLOW}Current time: $time${NC}"
echo -e "${GREEN}Today's date: $date${NC}"
