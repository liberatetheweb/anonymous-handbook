all:
	xelatex --jobname=AnonymousHandbook book.tex
	bibtex AnonymousHandbook
	xelatex --jobname=AnonymousHandbook book.tex
	xelatex --jobname=AnonymousHandbook book.tex
clean:
	rm -rf AnonymousHandbook.out AnonymousHandbook.aux AnonymousHandbook.log AnonymousHandbook.toc AnonymousHandbook.blg AnonymousHandbook.bbl
