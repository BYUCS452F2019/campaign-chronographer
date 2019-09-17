STYLESHEETS := $(shell find ./resources/ -name '*.css')
MARKDOWN := $(shell find ./ -name '*.md')
OTHER_DEPS := $(shell find ./resources/)

STYLES := $(shell echo "$(STYLESHEETS)" | tr ' ' '\n' | sed 's/^/ -c /g')

default: open

html: build/out.html
build/out.html: $(STYLESHEETS) $(MARKDOWN) $(OTHER_DEPS)
	mkdir -p build
	pandoc --toc --highlight-style breezedark -B resources/header.html \
	--metadata pagetitle="Cole Erickson - Project Pitch" \
	--self-contained --toc \
	$(STYLES) \
	$(MARKDOWN) \
	-t html -o build/out.html

pdf: build/out.pdf
build/out.pdf: build/out.html
	wkhtmltopdf --enable-internal-links \
	-L 1in -R 1in -T 1in -B 1in \
	./build/out.html ./build/out.pdf

open: pdf
	xdg-open ./build/out.pdf

clean:
	rm -rf ./build
