all:
	xelatex --jobname=temp book.tex
	bibtex temp
	bibtex further
	xelatex --jobname=temp book.tex
	xelatex --jobname=temp book.tex
	gs -sDEVICE=pdfwrite -dCompatibilityLevel=1.4 -dNOPAUSE -dQUIET -dBATCH -sOutputFile=AnonymousHandbook.pdf temp.pdf
	exiftool -overwrite_original -all= -Title="Настольная книга анонима. Зачем нужна анонимность и как ее достичь?" -Author="Anonymous" -AttributionURL="http://anonhandbook.org" -License="https://creativecommons.org/publicdomain/zero/1.0/" -URL="http://anonhandbook.org" AnonymousHandbook.pdf
epub:
	pandoc --standalone --toc --biblatex --smart -f latex -t epub --latex-engine=xelatex --bibliography=bibliography.bib --bibliography=further.bib  -o AnonymousHandbook.epub chap1.tex chap2.tex chap3.tex chap4.tex chap5.tex chap6.tex chap7.tex
clean:
	rm -rf temp.out temp.aux temp.log temp.toc temp.blg temp.bbl temp.pdf further.blg further.bbl further.blg further.aux
