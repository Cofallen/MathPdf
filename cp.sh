#!/bin/bash

# copy other .pdf into this folder

# Function to log messages with timestamp

log_message() {
    current_time=$(date +'%Y-%m-%d %H:%M:%S')
    echo "[$current_time] \$1" |tee -a Note/log.txt
}

# Check if pdf folder exists in Note directory, if not create it
if [ ! -d "pdf" ]; then
    mkdir -p pdf
fi

cd ..

# Loop through all directories except Note
for dir in */; do
    if [ "$dir" != "Note/" ]; then
        log_message "Checking directory: $dir"
        for file in $dir*.pdf; do
            if [ -f "$file" ]; then
                cp "$file" Note/pdf/
                log_message "Copied $file to Note/pdf/"
            fi
        done
    fi
done
