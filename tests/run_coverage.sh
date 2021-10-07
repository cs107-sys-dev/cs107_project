#!/usr/bin/env bash
set -e

# run the tests (generates coverage data to build report)
./run_tests.sh coverage run --source=.,cs107_package

# build the coverage report in xml format
coverage xml
