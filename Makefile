.PHONY: help

help: ## This help dialog.
	@awk 'BEGIN {FS = ":.*?## "} /^[a-zA-Z_-]+:.*?## / {printf "\033[36m%-30s\033[0m %s\n", $$1, $$2 | "sort -u"}' $(MAKEFILE_LIST)

test:
	pytest tests/