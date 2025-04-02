#!/bin/bash

output="combined.md"
pdf_output="combined.pdf"
order_file=".order"

# Clean previous output
rm -f "$output" "$pdf_output"

# Check if the file exists
if [ ! -f "$order_file" ]; then
    echo "File not found!"
    exit 1
fi

while IFS= read -r line || [ -n "$line" ]; do
  line=$(echo "$line" | tr -d '\r')
  md_file="${line}.md"
  if [ -f "$md_file" ]; then
    echo -e "\n\n# ${line}\n" >> "$output"
    echo "Adding: $md_file"
    cat "$md_file" >> "$output"
    echo -e "\n\n" >> "$output"  # Add spacing between files
  else
    echo "Warning: File '$md_file' not found."
  fi
done < "$order_file"

# Export to PDF using pandoc
if command -v pandoc > /dev/null; then
  echo "Generating PDF..."
  pandoc "$output" -o "$pdf_output"
  echo "PDF created at $pdf_output"
else
  echo "Pandoc is not installed. Skipping PDF generation."
fi