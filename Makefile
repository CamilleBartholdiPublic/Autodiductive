# Build the book: `make` writes build/autodiductive.pdf
BUILD := build

.PHONY: pdf clean
pdf:
	cd book && latexmk -pdf -interaction=nonstopmode -halt-on-error -outdir=../$(BUILD) autodiductive.tex

clean:
	rm -rf $(BUILD)
