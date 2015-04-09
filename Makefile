
thesis_pcui.pdf : thesis_pcui.ps
	ps2pdf thesis_pcui.ps

thesis_pcui.ps : thesis_pcui.dvi
	dvips -t letter thesis_pcui.dvi -o thesis_pcui.ps

thesis_pcui.dvi : thesis_pcui.tex
	latex thesis_pcui.tex
	latex thesis_pcui.tex
	latex thesis_pcui.tex
	bibtex thesis_pcui
	latex thesis_pcui.tex
	latex thesis_pcui.tex
	latex thesis_pcui.tex

open : thesis_pcui.ps
	evince thesis_pcui.ps &

clean :
	\rm -f *.aux *.bbl *.blg *.dvi *.idx *.lof *.log *.lot *.toc

