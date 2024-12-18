#!/bin/bash

# This improved script handles errors during file processing.
# It checks the exit status of each command and takes appropriate actions
# if an error occurs.

files=("/tmp/file1.txt" "/tmp/file2.txt" "/tmp/nonexistent_file.txt" "/tmp/file4.txt")

for file in "${files[@]}"; do
  echo "Processing: $file"
  # Simulate file processing that can fail. Check for errors
  if grep "pattern" "$file" > /dev/null 2>&1; then
    echo "Done processing: $file"
  else
    echo "Error processing file: $file"
    # Optionally you could exit the script or take other corrective actions
    # exit 1
  fi
done

# Optionally create dummy files for testing
touch /tmp/file1.txt /tmp/file2.txt /tmp/file4.txt