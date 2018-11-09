.PHONY: develop build clean clean-build

build: node_modules clean-build
	hugo

develop: node_modules clean-build
	hugo server

node_modules:
	npm install

clean-build:
	rm -rf public

clean: clean-build
	rm -rf node_modules
	rm -f package-lock.json