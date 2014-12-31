FileName=thesis
PDFPara=
TEXPara=

$(FileName).pdf : $(FileName).tex
	xelatex $(TEXPara) $(FileName)
	makeindex $(FileName).idx
	bibtex $(FileName) 
	xelatex $(TEXPara) $(FileName)
	xelatex $(TEXPara) $(FileName)

clear :
	-rm $(FileName).aux
	-rm $(FileName).log
	-rm $(FileName).pdf
	-rm $(FileName).toc
	-rm $(FileName).idx
	-rm $(FileName).ind
	-rm $(FileName).out
	-rm $(FileName).bbl
	-rm $(FileName).lof
	-rm $(FileName).lot
	-rm $(FileName).ilg
	-rm $(FileName).blg

