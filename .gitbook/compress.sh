#!/bin/bash
# Compress all PNG files in the given directory
input_folder="./assets"
output_folder="./compressed"

# Create output folder if it doesn't exist
mkdir -p "$output_folder"

for file in "$input_folder"/*.png; do
    output_file="$output_folder/$(basename "$file")"
    magick "$file" -quality 95 "$output_file"
    echo "Compressed: $file -> $output_file"
done
