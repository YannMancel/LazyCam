
DRIVER_FOLDER=test_driver
DRIVER_FILE=integration_test.dart

INTEGRATION_TEST_FOLDER=integration_test
INTEGRATION_TEST_FILES=$(wildcard $(INTEGRATION_TEST_FOLDER)/*_test.dart)

.PHONY: clean
clean: ## clear cache
	flutter clean

.PHONY: dependencies
dependencies: ## update dependencies
	flutter pub get

.PHONY: format
format: ## format code
	flutter format lib/

.PHONY: generate
generate: ## update generated files
	flutter pub run build_runner build --delete-conflicting-outputs

.PHONY: run-dev
run-dev: ## run app in debug mode
	flutter run --debug

.PHONY: integration_test
integration_test: ## run integration tests
	$(foreach test_file, $(INTEGRATION_TEST_FILES), \
 		flutter drive \
			--driver=$(DRIVER_FOLDER)/$(DRIVER_FILE) \
			--target=$(test_file); \
	)

.PHONY: mirror
mirror: ## mirror screen (using scrcpy)
	scrcpy --max-size 1024 --window-title 'My device'

.PHONY: record
record: ## record screen (using scrcpy)
	scrcpy --max-size 1024 --no-display --record "flutter_$(shell date +%Y%m%d-%H%M%S).mp4"

.DEFAULT_GOAL := help
.PHONY: help
help:
	@grep -E '(^[a-zA-Z_-]+:.*?##.*$$)|(^##)' $(MAKEFILE_LIST) | awk 'BEGIN {FS = ":.*?## "}; {printf "\033[32m%-30s\033[0m %s\n", $$1, $$2}' | sed -e 's/\[32m##/[33m/'


