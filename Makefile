.SHELL = /bin/sh

.PHONY: tests
tests:
	cd tests/classic && $(MAKE) clean build
