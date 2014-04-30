%echo off

mkdir build

pdflatex -interaction=nonstopmode document.tex
bibtex document
pdflatex -interaction=nonstopmode document.tex
pdflatex -interaction=nonstopmode document.tex

rmdir /s /q build

start "" /max "document.pdf"
