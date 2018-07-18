all: 	personal research

personal: personal_bibtex personal_latex

research: research_bibtex research_latex

#graphs:
#	misc/fx.gnuplot

personal_bibtex: 
	pdflatex --shell-escape ./personal_main.tex
	bibtex personal_main
	pdflatex --shell-escape ./personal_main.tex
	
personal_latex:	
	pdflatex --shell-escape personal_main.tex

research_bibtex: 
	pdflatex --shell-escape ./research_main.tex
	bibtex research_main
	pdflatex --shell-escape ./research_main.tex
	
research_latex:	
	pdflatex --shell-escape research_main.tex

clean:
	rm -f personal_main.aux personal_main.log personal_main.out personal_main.pdf personal_main.blg personal_main.bbl personal_texput.log
	rm -f research_main.aux research_main.log research_main.out research_main.pdf research_main.blg research_main.bbl research_texput.log
