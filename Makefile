all:
	pdflatex book.tex
clean:
	rm -rf book.out book.aux book.log book.toc
