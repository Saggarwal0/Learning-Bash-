#!/bin/bash

# Declare suits and ranks
suits=("Spades" "Hearts" "Diamonds" "Clubs")
ranks=("Ace" "Two" "Three" "Four" "Five" "Six" "Seven" "Eight" "Nine" "Ten" "Jack" "Queen" "King")

# Build the full deck
deck=()
for suit in "${suits[@]}"; do
    for rank in "${ranks[@]}"; do
        deck+=("$rank of $suit")
    done
done

# Shuffle the deck using random order
shuffled=($(for card in "${deck[@]}"; do echo "$RANDOM $card"; done | sort -n | cut -d' ' -f2-))

# Print the shuffled cards
echo "🃏 Shuffled Deck:"
for card in "${shuffled[@]}"; do
    echo "$card"
done
