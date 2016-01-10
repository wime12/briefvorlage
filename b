.do xflag 3
.mediasize a4
.hylang de_DE
.hy 14
.padj
.\" General Variables
.nr lettersize 11p
.nr linespacing 14p
.nr infolettersize 9p
.nr infolinespacing 11p
.nr backlettersize 8p
.nr bmargin 2c
.nr tmargin 2c
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
.fp 4 BI Optima-BoldItalic
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
.\""""""""""""" Hilfsmakros """""""""""""""""""""
.de CheckFirstPage
.   if \\n%>1 \{
.	errprint "Macro must be called on page 1"
.	ex \}
..
.\"""""""""""" Falz- und Lochmarken """"""""""""""
.de MA
.   CheckFirstPage
.   nf
.   vs 0
.   po 0
.   in 0
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
.   CheckFirstPage
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
.   CheckFirstPage
.   ev da
.   evc default
.   ps \n[backlettersize]u
.   sp |4.5c
.   nf
\\*[rueckadresse]
.   ev
..
.\"""""""""""" Briefkopf """"""""""
.de BK
.   CheckFirstPage
.   ev da
.   evc default
.   nf
.   di briefkopf
..
.de EK
.   di
.   if \\n(dnu>4.5c .errprint "Briefkopf zu hoch"
.   ev 1
.   sp |0
.   nf
.   briefkopf
.   ev
..
.\"""""""""" Vermerke """"""""""""""
.de BV
.   CheckFirstPage
.   ev da
.   evc default
.   nf
.   di vermerk
..
.de EV
.   di
.   if \\n(dnu>2v .errprint "Vermerkfeld zu hoch"
.   ev 1
.   in 0
'   sp |6.27c-\\n(dnu
'   nf
.   vermerk
.   ev
..
.\"""""""""" Anschrift """""""""""""
.de anschriftfehler
.	errprint "Anschriftfeld zu hoch
..
.de BA
.   CheckFirstPage
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
.   CheckFirstPage
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
.\""""""""""""" Main Text """"""""""""
.de P
.   sp
.\".   ne 2
..
.de PageHeader
.   ev 1
'   sp |1v
.   tl ''- % -''
'   sp |\\n[tmargin]u
.   ev
.   ns
..
.de PageFooter
.   ev 1
'   sp |\\n(.pu-\\n[bmargin]u+1v
.   tl '''...'
'   bp
.   ev
..
.de BT
.   CheckFirstPage
.   ev da
.   evc default
.   wh 0 PageHeader
.   wh -(\\n[bmargin]u+0.5v) PageFooter
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
.   ne 5
\\*[schluss]
.   sp 3
\\*[name]
.   wh 0
.   wh -(\\n[bmargin]u+0.5v)
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
