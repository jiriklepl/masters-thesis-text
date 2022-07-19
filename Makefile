NAME=thesis
ABSTRACT=abstract
IMGDIR=img
DOTSDIR=dots
LATEXMKOPTS=#-pdf #enable for forcing pdflatex
LATEXMK=latexmk $(LATEXMKOPTS)

PDFS=$(NAME).pdf $(ABSTRACT)-en.pdf $(ABSTRACT)-cz.pdf

.PHONY: all clean validate

all: $(NAME).pdf $(ABSTRACT)-cz.pdf $(ABSTRACT)-en.pdf

$(NAME).pdf: thesis.tex macros.tex metadata.tex intro.tex ch1.tex ch2.tex ch3.tex ch4.tex ch5.tex conclusion.tex bibliography.tex refs.bib $(IMGDIR)/out/subtyping-idea.pdf $(IMGDIR)/out/arch.pdf
	$(LATEXMK) $(NAME)

validate: all
	mkdir -p thesis
	cp $(NAME).pdf thesis
	docker run -v "$$PWD:/thesis" ghcr.io/mff-cuni-cz/cuni-thesis-validator verify /thesis/$(NAME).pdf
	rm thesis/$(NAME).pdf


$(ABSTRACT)-cz.pdf: abstract-cz.tex metadata.tex
	$(LATEXMK) $(ABSTRACT)-cz

$(ABSTRACT)-en.pdf: abstract-en.tex metadata.tex
	$(LATEXMK) $(ABSTRACT)-en

$(IMGDIR)/out/%.pdf: $(DOTSDIR)/%.dot
	mkdir -p $(IMGDIR)/out/ && dot -o $@ -Tpdf $<

clean:
	$(LATEXMK) -C
