file=thesis_template_test

.PHONY: main
main:
	pdflatex $(file).tex
	bibtex $(file)
	pdflatex $(file).tex
	pdflatex $(file).tex
	makeindex $(file).nlo -s nomencl.ist -o $(file).nls
	pdflatex $(file).tex
	make clean

.PHONY: clean
clean: 
	rm -rf auto *~ *log *aux *bcf *xml *bbl *lof *lot *toc *# *nlo *nls *blg *ilg

