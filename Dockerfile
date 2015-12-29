from debian
run apt-get update && apt-get install -y texlive-latex-extra texlive-lang-french && apt-get clean
run apt-get update && apt-get install -y make && apt-get clean
env TEXINPUTS :/usr/local/share/latex/sty:/usr/local/share/latex/common
add common /usr/local/share/latex/common/
add sty /usr/local/share/latex/sty/
add run /usr/local/bin/
run chmod +x /usr/local/bin/run
entrypoint ["/usr/local/bin/run"]
volume ["/data"]
