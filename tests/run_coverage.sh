#!/usr/bin/env bash
# File       : run_coverage.sh
# Description: Coverage wrapper around test suite driver script
# Copyright 2021 Harvard University. All Rights Reserved.
set -e

tool='coverage'
if [[ $# -gt 0 ]]; then
    tool="${1}"; shift
fi

if [[ ${tool} == 'coverage' ]]; then
    # run the tests (generates coverage data to build report)
    ./run_tests.sh coverage run --source=cs107_package "${@}"

    # build the coverage report on stdout
    coverage report -m
elif [[ ${tool} == 'pytest' ]]; then
    # generate coverage reports with pytest in one go
    ./run_tests.sh pytest --cov=cs107_package "${@}"
else
    >&2 echo "Error: unknown tool '${tool}'"
    exit 1
fi
