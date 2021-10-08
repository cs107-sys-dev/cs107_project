#!/usr/bin/env bash
# File       : run_tests.sh
# Description: Test suite driver script
# Copyright 2021 Harvard University. All Rights Reserved.
set -e

# list of test cases you want to run
tests=(
    # test_other_things_on_root_level.py
    subpkg_1/test_module_1.py
    # subpkg_2/test_module_3.py
    # subpkg_2/test_module_4.py
)

# decide what driver to use (depending on arguments given)
unit='-m unittest'
driver="python ${unit}"
for arg; do
    case ${arg} in
        coverage) driver="${@} ${unit}"; break;;
        pytest*) driver="${@}"; break;;
    esac
done

# we must add the module source path because we use `import cs107_package` in
# our test suite and we want to test from the source directly (not a package
# that we have (possibly) installed earlier)
export PYTHONPATH="$(pwd -P)/../src":${PYTHONPATH}

# run the tests
${driver} ${tests[@]}
