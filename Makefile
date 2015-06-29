export PATH:=/sbin:/usr/sbin:${PATH}

viewpdf:
	pdflatex tabbouleh.tex; xpdf tabbouleh.pdf

viewhtml:
	htlatex tabbouleh.tex "tabbouleh,charset=utf-8" "-cunihtf -utf8" ; x-www-browser tabbouleh.html
	#htlatex tabbouleh.tex tabbouleh ; x-www-browser tabbouleh.html

prepare:
	sudo apt-get install texlive xpdf 

clean:
	rm *.aux *.lg *.4* *.image.* *.htoc *.html *.css *.dvi *.haux *.pdf *.log *.out *.idv *.tmp *.xref *.toc
