all:
	xelatex --jobname=temp book.tex
	bibtex temp
	xelatex --jobname=temp book.tex
	xelatex --jobname=temp book.tex
	gs -sDEVICE=pdfwrite -dCompatibilityLevel=1.4 -dNOPAUSE -dQUIET -dBATCH -sOutputFile=AnonymousHandbook.pdf temp.pdf
clean:
	rm -rf temp.out temp.aux temp.log temp.toc temp.blg temp.bbl temp.pdf
