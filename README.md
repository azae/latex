# LaTeX container

This is our [LaTeX](https://fr.wikipedia.org/wiki/LaTeX) container used to build all enterprises documents like invoice and quote.

# Usage

use the `/data` volume to mount your tex directory and run : 

      docker run --rm -it -v $(pwd)/tests/:/data azae/latex pdflatex file.tex file.pdf

or if your LaTeX source directory is managed by Makefile : 

      docker run --rm -it -v $(pwd):/data azae/latex make pdf

# LaTeX sty subdirectory

Somes [LaTeX](https://fr.wikipedia.org/wiki/LaTeX) .sty file : 

- beamerthemeAzae.sty : Le Theme [Beamer](https://www.ctan.org/pkg/beamer) d'[Azaé](http://azae.net)
- devis.sty / facture.sty : Packages de création de devis et de factures Françaises.
- tango.sty : Définition des couleurs [Tango](http://tango.freedesktop.org/)

## sty usage

You can Clone this repo and add sty path in TEXINPUTS environement variable like

  git clone https://github.com/tclavier/LaTeX.git ~/latex
  echo 'TEXINPUTS=$TEXINPUTS:~/latex/sty/' >> ~/.bashrc

