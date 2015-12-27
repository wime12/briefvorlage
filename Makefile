ps: brief.ps

pdf: brief.pdf

txt: brief.tr
	TROFFMACS=$$PWD/ nroff -mb brief.tr | col

brief.pdf: brief.ps
	GS_FONTPATH=$$HOME/.fonts ps2pdf brief.ps

brief.ps: brief.tr
	TROFFMACS=$$PWD/ troff -mb brief.tr | dpost > brief.ps

clean:
	rm -f *.ps *.pdf
