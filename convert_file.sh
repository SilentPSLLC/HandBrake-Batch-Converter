#!/bin/bash

INPUT_DIR="/media/Home-Videos/to_be_converted"
OUTPUT_DIR="/media/Home-Videos/converted"

# Loop through all MKV files in the input directory
for file in "$INPUT_DIR"/*.mkv; do
    # Check if the file exists
    if [ -f "$file" ]; then
        # Get the base name of the file (without the directory)
        base_name=$(basename "$file")
        # Set the output file path
        output_file="$OUTPUT_DIR/${base_name%.mkv}.mp4"

        # Convert the file using HandBrakeCLI
        HandBrakeCLI -i "$file" -o "$output_file" -e x265 -q 20 -B 160 -R 48 --audio 1 --aencoder copy

        # Check if conversion was successful
        if [ $? -eq 0 ]; then
            # Delete the original file
            rm "$file"
        else
            echo "Conversion failed for $file"
        fi
    fi
done
