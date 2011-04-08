cd figures
./convert.rb
cd ..
./update
pdflatex Dissertation
pdflatex Dissertation
makeindex Dissertation.nlo -s nomencl.ist -o Dissertation.nls
bibtex Dissertation
pdflatex Dissertation
pdflatex Dissertation
