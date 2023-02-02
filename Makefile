# This Makefile will run common task for kotllin
# make : build main.kt 

SCRIPT_DIR = build

# Build main.kt, always the FIRST target in this Makefile
build: info
	@bash $(SCRIPT_DIR)/build.sh

info:
	echo $("make file for build project")

run:
	@bash $(SCRIPT_DIR)/run.sh

test: info
	echo "For test project unit test, function test, system test"