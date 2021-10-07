#!/usr/bin/env bash
set -e

driver=''
if [[ $# -eq 0 ]]; then
    driver='python'
else
    driver="$@"
fi

# we must add the module source path because we use `import cs107_package` in
# our test suite and we want to test from the source directly (not a package
# that we have possibly installed earlier)
export PYTHONPATH="$(pwd -P)/../src":${PYTHONPATH}
export PYTHONPATH="$(pwd -P)/subpkg_1":${PYTHONPATH}

# run the tests
${driver} -m unittest subpkg_1/test_module_1.py
