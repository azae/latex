# LaTeX container

This is our LaTeX container used to build all enterprises documents like invoice and quote.

# Usage

use the `/data` volume to mount your tex directory and run : 

      docker run --rm -it -v $(pwd):/data latex "pdflatex file.tex file.pdf"

or if your LaTeX source directory is managed by Makefile : 

      docker run --rm -it -v $(pwd):/data latex "make pdf"
