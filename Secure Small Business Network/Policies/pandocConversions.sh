# Uncomment the relevant command and run the script

# docx to latex to markdown
# find . -depth -name *.docx -exec sh -c 'pandoc {} -f docx -t latex | pandoc -f latex -t markdown -o {}.md' \;

# docx to markdown
# find . -depth -name *.docx -exec sh -c 'pandoc {} -f docx -t markdown -o {}.md' \;

# markdown to docx
find . -depth -name *.md -exec sh -c 'pandoc {} -f markdown -t docx -o {}.md' \;

# markdown to latex to docx
# find . -depth -name *.md -exec sh -c 'pandoc {} -f markdown -t latex | pandoc -f latex -t docx -o {}.md' \;
