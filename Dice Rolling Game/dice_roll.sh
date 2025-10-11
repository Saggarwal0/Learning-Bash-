#!/bin/bash

echo " Rolling 5 dice..."

# Roll 5 dice using RANDOM (values 1–6)
die1=$((RANDOM % 6 + 1))
die2=$((RANDOM % 6 + 1))
die3=$((RANDOM % 6 + 1))
die4=$((RANDOM % 6 + 1))
die5=$((RANDOM % 6 + 1))

# Print results
echo "Die 1: $die1"
echo "Die 2: $die2"
echo "Die 3: $die3"
echo "Die 4: $die4"
echo "Die 5: $die5"

# Calculate total
total=$((die1 + die2 + die3 + die4 + die5))
echo "🔢 Total: $total"

