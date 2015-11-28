# makefile for WP16 manuscript

all: outline.pdf

outline.pdf: outline.md	\
	         metadata.yaml \
			 bibliography.yaml \
	         figures/daily-energy-simulation.png \
			 figures/appliance-ownership-by-access-type.png \
			 figures/appliance-demand-by-access-type.png \
			 figures/post-electrification-ownership.png
	pandoc --bibliography bibliography.yaml \
		   --filter pandoc-citeproc \
		   outline.md metadata.yaml \
		   -o outline.pdf

figures/daily-energy-simulation.png: figures/daily-energy-simulation.ipynb
	runipy figures/daily-energy-simulation.ipynb

figures/appliance-ownership-by-access-type.png: figures/appliance-ownership-by-access-type.ipynb
	runipy figures/appliance-ownership-by-access-type.ipynb

figures/appliance-demand-by-access-type.png: figures/appliance-demand-by-access-type.ipynb
	runipy figures/appliance-demand-by-access-type.ipynb

figures/post-electrification-ownership.png: figures/post-electrification-ownership.ipynb
	runipy figures/post-electrification-ownership.ipynb

