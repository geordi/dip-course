SOURCE=anisotropic_filter

all:
	$(MAKE) -C mpost
	pdflatex $(SOURCE)
	pdflatex $(SOURCE)

clean:
	$(MAKE) -C mpost clean
	-rm *.pdf *.log *.aux
