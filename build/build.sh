#!/bin/bash

SCRIPT_DIR=$( cd -- "$( dirname -- "${BASH_SOURCE[0]}" )" &> /dev/null && pwd )
PROJECT_REPO="$(git rev-parse --show-toplevel)"


function f_print_Params() {
    
    echo "path of build.bash is:    ${SCRIPT_DIR}"
    echo "git dir:                  ${PROJECT_REPO}"
    # echo "NQT"
}

function f_printUsage() {
    echo Usage:
    echo "-b build with tag. Default:  ${SCRIPT_DIR} "
    echo "-h help "
}

function f_build_main() {
    echo "Start build main.jar"
    printf "Run command line build kotlin => main.jar \n"
    kotlinc $PROJECT_REPO/project/src/kotlin/main.kt -include-runtime -d $SCRIPT_DIR/main.jar
    echo "Build sucessfully $SCRIPT_DIR/main.jar"
}

###################################################################
#Main function
#
###################################################################

f_print_Params
f_printUsage
f_build_main
