TEX=xelatex
BIB=bibtex8
BIBFLAGS=-B -c utf8cyrillic.csf
CFLAGS=-I.

all: clean build

build: 
	$(TEX) main.tex
	$(BIB) $(BIBFLAGS) main.aux
	$(TEX) main.tex

.PHONY: clean

clean:
	find . -name "*.aux" -exec rm {} \;
	find . -name "*.bbl" -exec rm {} \;
	find . -name "*.out" -exec rm {} \;
	find . -name "*.toc" -exec rm {} \;
	find . -name "*.lot" -exec rm {} \;
	find . -name "*.log" -exec rm {} \;
	find . -name "*.lof" -exec rm {} \;
	find . -name "*.nlo" -exec rm {} \;