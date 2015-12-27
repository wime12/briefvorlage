.\""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
.\" Briefvorlage für Briefe nach DIN 5008                    "
.\"                                                          "
.\" Control-N springt zum nächsten Eingabefeld. Control-P    "
.\" springt zum vorherigen. Geht sowohl im visuellen Modus   "
.\" als auch im Einfügemodus.                                "
.\" Am Ende "make" in diesem Verzeichnis aufrufen, um die    "
.\" Postscript-Datei "brief.ps" zu erzeugen.                 "
.\"                                                          "
.\""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
.do xflag 3
.mediasize a4
.hylang de_DE
.hy 14
.padj
.\" General Variables
.nr lettersize 11p
.nr linespacing 13p
.nr infolettersize 9p
.nr infolinespacing 11p
.nr backlettersize 8p
.af mo 01
.af dy 01
.ds datum \n[year]-\n(mo-\n(dy
.ds rueckadresse "<++ Rueckadresse ++>
.ds gruss "Sehr geehrte Damen und Herren,
.ds schluss "Mit freundlichen Grüßen,
.ds name "<++ Name ++>
.ds betreff "<++ Betreff ++>
.\""""""""""""""""" Fonts """"""""""""""""""""""""
.fp 1 R Optima
.fp 2 I Optima-Italic
.fp 3 B Optima-Bold
.po 2.5c
.ev default
.   ps \n[lettersize]u
.   vs \n[linespacing]u
.   ss \n[.ss] 0
.   ll 16.5c
.   in 0c
.ev
\.\"""""""""""""" German Glyphs """""""""""""""""""
.char \(:A \[Adieresis]
.char \(:O \[Odieresis]
.char \(:U \[Udieresis]
.char \(:a \[adieresis]
.char \(:o \[odieresis]
.char \(:u \[udieresis]
.char \(ss \[germandbls]
.char \[ldq] \[quotedblbase]
.char \[rdq] \[quotedblleft]
.char \(lq \[quotebase]
.char \(rq \[quoteleft]
.char \(bu \[bullet]
.\"""""""""""" Falz- und Lochmarken """"""""""""""
.de MA
.   vs 0
.   po 0
.   sp |10.5c
\D'l 1.0c 0c'
.   sp |14.85c
\D'l 1.5c 0c'
.   sp |21.0c
\D'l 1.0c 0c'
.   br
.   po 2.5c
.   vs \n[linespace]u
..
.\""""""""""""""" Datum """"""""""""""""""""""""""
.de DA
.   ev da
.   evc default
.   in 10c
.   sp |9c-1v
.   nf
Datum: \\*[datum]
.   ev
..
.\""""""""" Rücksendeadresse """""""
.de RU
.   ev da
.   evc default
.   ps \n[backlettersize]u
.   sp |4.5c
.   nf
\\*[rueckadresse]
.   ev
..
.\"""""""""" Vermerke """"""""""""""
.de vermerkfehler
.   errprint "Vermerkfeld zu hoch
..
.de BV
.   ev da
.   evc default
.   in 0
.   wh 6.27c+0.5v vermerkfehler
.   sp |6.27c-2v
.   nf
..
.de EV
.   ev
.   wh 6.27c+0.5v
..
.\"""""""""" Anschrift """""""""""""
.de anschriftfehler
.	errprint "Anschriftfeld zu hoch
..
.de BA
.   ev da
.   evc default
.   sp |6.27c
.   wh 9c anschriftfehler
.   nf
..
.de EA
.   wh 9c
.   ev
..
.\"""""""""""" Informationsblock """"""""""""""
.de infofehler
.	errprint "Informationsblock zu hoch
..
.de BI
.   ev da
.   evc default
.   in 10c
.   ps \n[infolettersize]u
.   vs \n[infolinespacing]u
.   sp |5.0c
.   wh 9c-2v infofehler
.   nf
..
.de EI
.   wh 9c-2v
.   ev
..
.\""""""""""""" Betreff """"""""""""
.de BT
.   ev da
.   evc default
.   fi
.   sp |9.846c
.   ft B
\\*[betreff]
.   ft P
.   br
.   sp 2
\\*[gruss]
.   br
.   sp
..
.de ET
.   sp
.   nf
\\*[schluss]
.   sp 3
\\*[name]
.   ev
..
.\""""""""""""" Anlagen """""""""""""""
.de BL
.   ev da
.   evc default
.   sp
.   nf
.   ft B
Anlagen
.   ft R
..
.de EL
.   ev
..