all: comm_sec.pdf

comm_sec.pdf: comm_sec.md cse870-miniproject-p1.bib
	pandoc -r markdown+yaml_metadata_block+startnum+fancy_lists+definition_lists -s -S --latex-engine=xelatex --bibliograph=cse870-miniproject-p1.bib --template=latex.tpl $< -o $@



clean:
	rm -rf comm_sec.pdf
