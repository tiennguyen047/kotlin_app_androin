# This Makefile will run common task for kotllin
# make : build main.kt 

SCRIPT_DIR = build

# Build main.kt, always the FIRST target in this Makefile
build: info
	@bash $(SCRIPT_DIR)/build.sh

# Project info
info:
	echo $("make file for build project")

# For run scrip
run:
	echo "\n\n Run $(SCRIPT_DIR)/run.sh:"
	@bash $(SCRIPT_DIR)/run.sh

# For build and run script
br: build run

# For test unit test, function test, system test
test: info
	echo "For test project unit test, function test, system test"