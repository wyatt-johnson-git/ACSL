find . -depth -name *.docx -exec sh -c 'pandoc {} -f docx -t latex | pandoc -f latex -t markdown -o {}.md' \;
