from debian
run apt-get update && apt-get install -y texlive-latex-extra && apt-get clean
env TEXINPUTS /usr/local/share/latex/sty:/usr/local/share/latex/common
add azae.tex /usr/local/share/latex/common
add logo_azae.png /usr/local/share/latex/common
