from debian
run apt-get update && apt-get install -y texlive-latex-extra && apt-get clean
env TEXINPUTS /usr/local/share/latex/
