.DEFAULT_GOAL := help
POETRY_OVERRIDE_PYTHON := true

export PROJECT_DIR ?= $(shell pwd | sed 's/\/cygdrive//g')

help:  ## print this help
	@# https://marmelab.com/blog/2016/02/29/auto-documented-makefile.html
	@grep -E '^([a-zA-Z_-]|\/)+:.*?## .*$$' $(MAKEFILE_LIST) | awk 'BEGIN {FS = ":.*?## "}; {printf "\033[36m%-30s\033[0m %s\n", $$1, $$2}'
	@echo ""
.PHONY: help

run:  ## Run code
	poetry run python .
.PHONY: run
