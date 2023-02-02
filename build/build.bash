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

###################################################################
#Main function
#
###################################################################

f_print_Params
f_printUsage