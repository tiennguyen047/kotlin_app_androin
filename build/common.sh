#!/bin/bash
proj_repo="$(git rev-parse --show-toplevel)"
docker_file=${proj_repo}
image_name="ncd_image"
version="ncd_v_1"
packages=${proj_repo}/packages
path_docker_images=${proj_repo}/packages/${image_name}___${version}.tar