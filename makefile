# makefile for WP16 manuscript

all: outline.pdf

outline.pdf: outline.md	\
	         figures/daily-energy-simulation.png \
			 figures/appliance-ownership-by-access-type.png \
			 figures/appliance-demand-by-access-type.png \
			 figures/post-electrification-ownership.png
	pandoc --filter pandoc-citeproc outline.md -o outline.pdf

figures/daily-energy-simulation.png: figures/daily-energy-simulation.ipynb
	runipy figures/daily-energy-simulation.ipynb

figures/appliance-ownership-by-access-type.png: figures/appliance-ownership-by-access-type.ipynb
	runipy figures/appliance-ownership-by-access-type.ipynb

figures/appliance-demand-by-access-type.png: figures/appliance-demand-by-access-type.ipynb
	runipy figures/appliance-demand-by-access-type.ipynb

figures/post-electrification-ownership.png: figures/post-electrification-ownership.ipynb
	runipy figures/post-electrification-ownership.ipynb

# all: author-prepared.pdf soto-ghtc.pdf draft.pdf
#
# author-prepared.pdf: author-prepared.tex text.tex
# 	pdflatex author-prepared.tex
# 	pdflatex author-prepared.tex
#
# soto-ghtc.pdf: soto-ghtc.tex text.tex
# 	pdflatex soto-ghtc.tex
# 	pdflatex soto-ghtc.tex
#
# draft.pdf: draft.tex text.tex
# 	pdflatex draft.tex
# 	pdflatex draft.tex
#
# tidy:
# 	rm *.aux *.log *.out
