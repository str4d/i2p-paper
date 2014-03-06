FILES=i2p-paper.tex

PDFLATEX=pdflatex

all: i2p-paper.pdf

show: all
	xpdf i2p-paper.pdf

i2p-paper.pdf: $(FILES)
	-mkdir build
	pdflatex -output-directory build i2p-paper.tex
	bibtex build/i2p-paper.aux
	pdflatex -output-directory build i2p-paper.tex
	pdflatex -output-directory build i2p-paper.tex
	mv build/i2p-paper.pdf .

clean:
	rm -rf build
	rm -f i2p-paper.pdf
