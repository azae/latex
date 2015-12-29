from debian
run apt-get update && apt-get install -y texlive-latex-extra texlive-lang-french && apt-get clean
run apt-get update && apt-get install -y make git && apt-get clean
env TEXINPUTS :/usr/local/share/latex/sty:/usr/local/share/latex/common
add azae.tex /usr/local/share/latex/common/
add logo_azae.pdf /usr/local/share/latex/common/

run git clone https://github.com/tclavier/LaTeX.git /usr/local/share/latex/sty

add run /usr/local/bin/
run chmod +x /usr/local/bin/run
entrypoint ["/usr/local/bin/run"]
volume ["/data"]
