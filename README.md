# Export Markdown as PDF
Shell script which exports a series of markdown files as a single Markdown file and PDF.

If the folder contains an `.order` file, the script will compose the export in that order. Otherwise it will use the file system order.

## Setup
bash — Script is written for bash, standard on macOS/Linux.

pandoc — Required to convert the combined Markdown file to PDF.
- Install via Homebrew: brew install pandoc
- Or via apt: sudo apt install pandoc
 
LaTeX engine — Required by Pandoc for PDF export (default is pdflatex).
- Recommended: MacTeX (macOS) or texlive-full / texlive-latex-extra (Linux)
- Must include soul.sty and other common packages

## Usage
Navigate to a folder containing one or more `.md` files and an optional `.order` file.

1. `chmod +x ExportAsPdf.sh` to give the script pemrissions to execute
2. `./ExportAsPdf.sh` to execute the script

Will produce `combined.md` and `combined.pdf`.
