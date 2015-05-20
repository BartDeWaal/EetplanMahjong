FILENAME=mahjongrules

all : $(FILENAME).pdf cleanup

.PHONY : cleanup
cleanup : 
	-rm $(FILENAME).aux
	-rm $(FILENAME).log

.PHONY : clean
clean : cleanup
	-rm $(FILENAME).pdf

$(FILENAME).pdf : $(FILENAME).tex
	xelatex $(FILENAME).tex
