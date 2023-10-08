all: book.pdf

%.pdf: %.tex 
	xelatex $<
#	bibtex  article.aux
#	xelatex article.tex
#	xelatex book.tex

clean:
	-rm book.pdf
	-rm book.aux
	-rm book.log
	-rm book.bbl
	-rm book.blg
	-rm book.toc

.PHONY: clean
