FIGURES_TEX=$(shell find figures -name '*.tex' -type f)
REGULAR_TEX=$(shell find misc chapters -name '*.tex' -type f)
REGULAR_PNG=$(shell find misc figures chapters -name '*.png' -type f)
FIGURES_PDF=$(subst .tex,.pdf,$(FIGURES_TEX))

.PHONY: clean

thesis.pdf: $(FIGURES_PDF) $(REGULAR_TEX) $(REGULAR_PNG) thesis.tex

%.pdf: %.tex
	cd `dirname $<` && latexmk -pdf `basename $<`

clean:
	find . | grep -E '\.(aux|log|bbl|bcf|blg|fls|toc|pdf|run\.xml|fdb_latexmk|synctex\.gz|dvi|out\.ps)$$' | xargs -r rm
	find . | grep -E 'SAVE\-ERROR$$' | xargs -r rm
