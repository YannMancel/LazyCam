
FLUTTER?=flutter
REPOSITORIES?=lib
RUN_VERSION?=--debug

DRIVER_FOLDER=test_driver
DRIVER_FILE=integration_test.dart

INTEGRATION_TEST_FOLDER=integration_test
INTEGRATION_TEST_FILES=$(wildcard $(INTEGRATION_TEST_FOLDER)/*_test.dart)

GREEN_COLOR=\033[32m
NO_COLOR=\033[0m

define print_color_message
	@echo "$(GREEN_COLOR)$(1)$(NO_COLOR)";
endef

##
## ---------------------------------------------------------------
## Flutter
## ---------------------------------------------------------------
##

.PHONY: clean
clean: ## clear cache
	@$(call print_color_message,"clear cache")
	$(FLUTTER) clean

.PHONY: dependencies
dependencies: ## update dependencies
	@$(call print_color_message,"update dependencies")
	$(FLUTTER) pub get

.PHONY: format
format: ## format code by default lib directory
	@$(call print_color_message,"format code by default lib directory")
	$(FLUTTER) format $(REPOSITORIES)

.PHONY: run
run: ## run application by default debug version
	@$(call print_color_message,"run application by default debug version")
	$(FLUTTER) run $(RUN_VERSION)

##
## ---------------------------------------------------------------
## Build_runner
## ---------------------------------------------------------------
##

.PHONY: generate
generate: ## generate files with build_runner
	@$(call print_color_message,"generate files with build_runner")
	$(FLUTTER) pub run build_runner build --delete-conflicting-outputs

##
## ---------------------------------------------------------------
## Integration tests
## ---------------------------------------------------------------
##

.PHONY: integration-tests
integration-tests: ## run integration tests
	@$(call print_color_message,"run integration tests")
	$(foreach test_file, $(INTEGRATION_TEST_FILES), \
 		flutter drive \
			--driver=$(DRIVER_FOLDER)/$(DRIVER_FILE) \
			--target=$(test_file); \
	)

##
## ---------------------------------------------------------------
## scrcpy
## ---------------------------------------------------------------
##

.PHONY: mirror
mirror: ## mirror screen (using scrcpy)
	@$(call print_color_message,"mirror screen (using scrcpy)")
	scrcpy --max-size 1024 --window-title 'My device'

.PHONY: record
record: ## record screen (using scrcpy)
	@$(call print_color_message,"record screen (using scrcpy)")
	scrcpy --max-size 1024 --no-display --record "flutter_$(shell date +%Y%m%d-%H%M%S).mp4"

#
# ----------------------------------------------------------------
# Help
# ----------------------------------------------------------------
#

.DEFAULT_GOAL := help
.PHONY: help
help:
	@grep -E '(^[a-zA-Z_-]+:.*?##.*$$)|(^##)' $(MAKEFILE_LIST) | awk 'BEGIN {FS = ":.*?## "}; {printf "$(GREEN_COLOR)%-30s$(NO_COLOR) %s\n", $$1, $$2}' | sed -e 's/\[32m##/[33m/'
