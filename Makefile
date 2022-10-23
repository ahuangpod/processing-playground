.DEFAULT_GOAL := help
POETRY_OVERRIDE_PYTHON := true

export PROJECT_DIR ?= $(shell pwd | sed 's/\/cygdrive//g')

ifeq ($(firstword $(MAKECMDGOALS)), $(filter $(firstword $(MAKECMDGOALS)), new run))
  # use the rest as arguments for "run"
  RUN_ARGS := $(wordlist 2,$(words $(MAKECMDGOALS)),$(MAKECMDGOALS))
  # ...and turn them into do-nothing targets
  $(eval $(RUN_ARGS):;@:)
endif

help:  ## print this help.
	@# https://marmelab.com/blog/2016/02/29/auto-documented-makefile.html
	@grep -E '^([a-zA-Z_-]|\/)+:.*?## .*$$' $(MAKEFILE_LIST) | awk 'BEGIN {FS = ":.*?## "}; {printf "\033[36m%-30s\033[0m %s\n", $$1, $$2}'
	@echo ""
.PHONY: help

run:  ## Run skech with name, the sketch folder should be under src.
	poetry run python src/$(RUN_ARGS)
.PHONY: run

new:  ## Start a new sketch under src.
	cp -r src/template src/$(RUN_ARGS)
.PHONY: new