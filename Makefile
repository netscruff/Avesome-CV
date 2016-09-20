.PHONY: examples

examples: $(foreach x,coverletter cv resume,examples/$x.pdf)

boss: $(foreach x,cv ,bosscv/$x.pdf)

%.pdf: %.tex
	xelatex -output-directory=$(dir $@) $<
