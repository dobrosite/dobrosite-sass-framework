.SHELL = /bin/sh

.PHONY: build
build: bundle.css

.PHONY: clean
clean:
	-rm bundle.css

bundle.css:
	../../node_modules/.bin/node-sass --output-style=expanded -i bundle.scss -o .
