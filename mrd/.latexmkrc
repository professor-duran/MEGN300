# latexmkrc — Configuration for latexmk
# Place this file in the same directory as main.tex

# Use pdflatex
$pdf_mode = 1;
$pdflatex = 'pdflatex -interaction=nonstopmode -file-line-error %O %S';

# Automatically run makeindex when .idx changes
$makeindex = 'makeindex %O -o %D %S';

# Clean up extra files
$clean_ext = 'synctex.gz idx ilg ind bbl run.xml bcf';

# Increase max passes to handle complex cross-references
$max_repeat = 5;
