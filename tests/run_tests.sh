#!/usr/bin/env bash
set -e

# we must add the module source path because we use `import cs107_package` in
# our test suite and we want to test from the source directly (not a package
# that we have possibly installed earlier)
export PYTHONPATH="$(pwd -P)/../src":${PYTHONPATH}

# run the tests
python -m unittest discover
