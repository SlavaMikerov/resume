all:
	make output/resume.pdf

output/resume.pdf: $(wildcard tex/*.tex)
	mkdir -p build
	xelatex --extra-mem-bot=10000000 -halt-on-error -output-directory=./build resume.tex; cd -
	mv -f build/resume.pdf resume.pdf

clean:
	rm -rf build
