#!/bin/bash

# This script attempts to process a list of files, but it has a subtle bug.
# It uses a loop to iterate through the files. However, if the script encounters an error while processing a file,
# it doesn't handle the error properly and continues processing other files. This may lead to unexpected behavior or
# incomplete processing.

files=("/tmp/file1.txt" "/tmp/file2.txt" "/tmp/nonexistent_file.txt" "/tmp/file4.txt")

for file in "${files[@]}"; do
  # Attempt to process each file, but does not handle errors
  echo "Processing: $file"
  # Simulate file processing that can fail
  grep "pattern" "$file" > /dev/null 2>&1 || true # Suppress errors
  echo "Done processing: $file"
done