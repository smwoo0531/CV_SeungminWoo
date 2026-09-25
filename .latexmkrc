# latexmk configuration: `latexmk` builds main.pdf into build/, `latexmk -C` cleans.
$pdf_mode = 1;            # pdflatex
$out_dir  = 'build';
@default_files = ('main.tex');
$bibtex_use = 0;          # no bibliography step; publications are typed inline
