.PHONY: help
.DEFAULT_GOAL := help

help:
	@grep -P '^[a-zA-Z_-]+:.*?## .*$$' $(MAKEFILE_LIST) | sort | awk 'BEGIN {FS = ":.*?## "}; {printf "\033[36m%-30s\033[0m %s\n", $$1, $$2}'

# Initialization ==============================================================

install: ## Install npm dependencies
	@echo "Installing Node dependencies"
	@npm install

run: ## Start json server
	@./node_modules/json-server/bin/index.js --watch db.json
