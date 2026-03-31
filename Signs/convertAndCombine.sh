
# Create docx files from all the markdown documents in the signs folder
find . -maxdepth 1 -name "*.md" -exec sh -c 'pandoc "{}" -f markdown -t docx -o "{}.docx"' \;
# Combine all the docx files into a single one. 
pandoc *.docx -o SignsTest.docx
# remove the intermediary docx files
find . -maxdepth 1 -name "*.md.docx" -exec sh -c 'rm {}' \;