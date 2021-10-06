#!/usr/bin/env bash
set -e

# we must add the module source path because we use `import cs107_package` in
# our test suite and we want to test from the source directly (not a package
# that we have possibly installed earlier)
SRC="$(pwd -P)/../src"
export PYTHONPATH=${SRC}:${PYTHONPATH}

# run the tests (generates coverage data to build report)
coverage run --source=.,cs107_package -m unittest discover

# build the coverage report in xml format
coverage xml
