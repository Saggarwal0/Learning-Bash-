#!/bin/bash

# Make sure the word list exists
if [[ ! -f "wordlist.txt" ]]; then
    echo "Error: wordlist.txt not found!"
    exit 1
fi

# Start game loop
while true; do
    # Pick a random word from the list
    word_count=$(wc -l < wordlist.txt)
    random_line=$((RANDOM % word_count + 1))
    word=$(sed -n "${random_line}p" wordlist.txt)
    word=$(echo "$word" | tr '[:upper:]' '[:lower:]')

    # Print blank version
    display=""
    for (( i=0; i<${#word}; i++ )); do
        display+="_ "
    done

    echo
    echo "🎉 New Word Selected!"
    echo "Your word has ${#word} letters:"
    echo "$display"

    # Ask if the user wants to go again
    echo
    read -p "Would you like to pick another word? (y/n): " choice
    if [[ "$choice" != "y" && "$choice" != "Y" ]]; then
        echo "Thanks for playing!"
        break
    fi
done
