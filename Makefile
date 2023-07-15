
.PHONY: clean

.RECIPEPREFIX = >

# Search recursively for TeX sources within the current repo. This makes
# the CT.pdf outdated for every single change to any of the parts here.
TEXFILES := $(shell find . -type f -name '*.tex')

# The main pdf file.
TM.pdf: $(TEXFILES)
> @latexmk -lualatex -lualatex='lualatex --shell-escape %O %S' TM.tex 

# Read .gitignore, and look for things to delete.
clean:
> latexmk -CA
#> grep -P '^\s*[^# ]' .gitignore | \
#>   xargs -I % find . -not -path './.git/*' -iname % -delete

