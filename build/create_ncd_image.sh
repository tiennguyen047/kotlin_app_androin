#!/bin/bash
source "$(realpath $(dirname $0))"/common.sh
SCRIPT_DIR=$( cd -- "$( dirname -- "${BASH_SOURCE[0]}" )" &> /dev/null && pwd )

###################################################################
#FUNCTION
#
###################################################################

function f_print_Params() {

    echo "path of create_ncd_image.sh is:   ${SCRIPT_DIR}"
    echo "git dir:                          ${proj_repo}"
    # echo "NQT"
}

function f_printUsage() {
    echo Usage:
    echo "-b build with tag. Default:  ${SCRIPT_DIR} "
    echo "-h help "
}

function f_save_docker_image() {
    echo "save docker images at ${path_docker_images}"
    docker save -o ${path_docker_images} ${image_name}:${version}

}

function f_build_docker_images() {
    echo ${proj_repo}
    echo ${image_name}:${version}

    docker build -t ${image_name}:${version} ${proj_repo}
}

###################################################################
#Main function
#
###################################################################

f_print_Params
f_printUsage
f_build_docker_images
f_save_docker_image