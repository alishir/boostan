all: book.pdf

SECTIONS := $(shell find ./sections -name "*.tex")

book.pdf: book.tex title.tex $(SECTIONS)
#	bibtex  article.aux
	xelatex book.tex
	xelatex book.tex

clean:
	-rm book.pdf
	-rm book.aux
	-rm book.log
	-rm book.bbl
	-rm book.blg
	-rm book.toc

.PHONY: clean
