.SHELL = /bin/sh

.PHONY: tests
tests:
	cd tests/default && $(MAKE) clean build
