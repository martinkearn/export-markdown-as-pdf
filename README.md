# Export Markdown as PDF
Shell script which exports a series of markdown files as a single Markdown file and PDF.

If the folder contains an `.order` file, the script will compose the export in that order. Otherwise it will use the file system order.

## Usage
Navigate to a folder containing one or more `.md` files and an optional `.order` file.

1. `chmod +x ExportAsPdf.sh` to give the script pemrissions to execute
2. `./ExportAsPdf.sh` to execute the script

Will produce `combined.md` and `combined.pdf`.
