# This Makefile will run common task for kotllin
# make : build docker images

SCRIPT_DIR = build

# Build docker images, always the FIRST target in this Makefile
build: info
	@bash $(SCRIPT_DIR)/create_ncd_image.sh

# Project info
info:
	@echo "make file for build project"

# For run scrip
run:
	@echo "\n\n Run $(SCRIPT_DIR)/run.sh:"
	@bash $(SCRIPT_DIR)/run.sh

build_kt: info
	@bash $(SCRIPT_DIR)/build.sh

# For build and run script
br: build_kt run

# For run python code
python:
	@echo "Run $(SCRIPT_DIR)/run_py.sh"
	@bash $(SCRIPT_DIR)/run_py.sh

# For test unit test, function test, system test
test: info
	@echo "For test project unit test, function test, system test"