STYLESHEETS := $(shell find ./resources/ -name '*.css')
MARKDOWN := $(shell find ./ -name '*.md')
OTHER_DEPS := $(shell find ./resources/)

STYLES := $(shell echo "$(STYLESHEETS)" | tr ' ' '\n' | sed 's/^/ -c /g')

default: open

html: build/out.html
build/out.html: $(STYLESHEETS) $(MARKDOWN) $(OTHER_DEPS)
	mkdir -p build
	pandoc --highlight-style breezedark -B resources/header.html \
	--metadata pagetitle="Physics & Astronomy - Web Proposal" \
	--self-contained --toc \
	$(STYLES) \
	$(MARKDOWN) \
	-t html -o build/out.html

pdf: build/out.pdf
build/out.pdf: build/out.html
	wkhtmltopdf ./build/out.html ./build/out.pdf

open: pdf
	xdg-open ./build/out.pdf

clean:
	rm -rf ./build