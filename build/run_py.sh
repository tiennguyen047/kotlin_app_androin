#!/bin/bash

SCRIPT_DIR=$( cd -- "$( dirname -- "${BASH_SOURCE[0]}" )" &> /dev/null && pwd )
PROJECT_REPO="$(git rev-parse --show-toplevel)"
LIB_PATH=${PROJECT_REPO}/project/src/python:${PROJECT_REPO}/project/src/java

env PYTHONPATH="${SCRIPT_DIR}:${LIB_PATH}:$PYTHONPATH" python3 ${PROJECT_REPO}/project/src/python/main.py