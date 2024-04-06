.PHONY: clean
.RECIPEPREFIX = >

TM.pdf: TM.tex struttura.tex sezioni/*.tex
> @latexmk -lualatex $< 

clean:
> latexmk -c

