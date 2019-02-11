.PHONY: develop build clean clean-build deps

build: deps clean-build
	hugo

develop: deps clean-build
	hugo server

deps: node_modules static/lib
	cp ./node_modules/siema/dist/siema.min.js ./static/lib/

node_modules:
	npm install

static/lib:
	mkdir ./static/lib

clean-build:
	rm -rf public

clean: clean-build
	rm -rf node_modules
	rm -f package-lock.json