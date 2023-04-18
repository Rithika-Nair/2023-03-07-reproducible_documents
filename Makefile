# author: Rithika Nair
# date: 2023-04-19

all : analysis/penguins.html

# render R Markdown report in HTML
analysis/penguins.html: analysis/penguins.Rmd
	Rscript -e "rmarkdown::render('analysis/penguins.Rmd', output_dir = here::here('output'))"

#clean
clean:
	rm -f analysis/penguins.html output/penguins.html


