#!/bin/sh
# Traverse through the list of files
files=$(grep -rL "colors_name")

for file in $files; do
    scheme_name="${file%.vim}"
    # Add line to the beginning of the file
    echo "let g:colors_name = \"$scheme_name\"" >> $file
done
