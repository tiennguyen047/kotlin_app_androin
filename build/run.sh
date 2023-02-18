#!/bin/bash

source "$(realpath $(dirname $0))"/common.sh
SCRIPT_DIR=$( cd -- "$( dirname -- "${BASH_SOURCE[0]}" )" &> /dev/null && pwd )
PROJECT_REPO="$(git rev-parse --show-toplevel)"

function f_print_Params() {

    echo "path of run.bash is:      ${SCRIPT_DIR}"
    echo "git dir:                  ${PROJECT_REPO}"
    # echo "NQT"
}

function f_printUsage() {
    echo Usage:
    echo "-r build with tag. Default:  ${SCRIPT_DIR} "
    echo "-h help "
}

function f_run_main.jar() {
    echo "run script ${packages}/main.jar"
    printf "result ${packages}/main.jar: \n"
    java -jar ${packages}/main.jar
}




###################################################################
#Main function
#
###################################################################

f_print_Params
f_printUsage
f_run_main.jar