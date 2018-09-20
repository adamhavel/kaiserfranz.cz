.PHONY: develop clean clean-build

SRC_DIR = src
BUILD_DIR = build

$(BUILD_DIR): node_modules clean-build
	npm run build
	cp -R $(SRC_DIR)/font $(BUILD_DIR)
	cp -R $(SRC_DIR)/img $(BUILD_DIR)
	cp $(SRC_DIR)/*.* $(BUILD_DIR)

develop: node_modules
	npm run develop

node_modules:
	npm install

clean-build:
	rm -rf $(BUILD_DIR)

clean: clean-build
	rm -rf node_modules
	rm -f package-lock.json