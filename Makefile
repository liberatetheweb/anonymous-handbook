all:
	pdflatex -interaction=batchmode --jobname=AnonymousHandbook book.tex
	bibtex AnonymousHandbook
	-pdflatex -interaction=batchmode --jobname=AnonymousHandbook book.tex
	-pdflatex -interaction=batchmode --jobname=AnonymousHandbook book.tex
clean:
	rm -rf AnonymousHandbook.out AnonymousHandbook.aux AnonymousHandbook.log AnonymousHandbook.toc AnonymousHandbook.blg AnonymousHandbook.bbl
