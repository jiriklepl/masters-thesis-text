NAME=thesis
ABSTRACT=abstract
LATEXMKOPTS=#-pdf #enable for forcing pdflatex
LATEXMK=latexmk $(LATEXMKOPTS)

PDFS=$(NAME).pdf $(ABSTRACT)-en.pdf $(ABSTRACT)-cz.pdf

.PHONY: all clean

all: $(NAME).pdf $(ABSTRACT)-cz.pdf $(ABSTRACT)-en.pdf

$(NAME).pdf: thesis.tex macros.tex metadata.tex intro.tex ch1.tex ch2.tex ch3.tex conclusion.tex bibliography.tex refs.bib
	$(LATEXMK) $(NAME)

$(ABSTRACT)-cz.pdf: abstract-cz.tex metadata.tex
	$(LATEXMK) $(ABSTRACT)-cz

$(ABSTRACT)-en.pdf: abstract-en.tex metadata.tex
	$(LATEXMK) $(ABSTRACT)-en

clean:
	$(LATEXMK) -C
