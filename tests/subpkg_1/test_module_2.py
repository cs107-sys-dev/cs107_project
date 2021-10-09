"""
This test suite (a module) runs tests for subpkg_1.module_2 of the
cs107_package.
"""

import pytest

# project code
from cs107_package.subpkg_1.module_2 import *


class TestFunctions:
    """We do not inherit from unittest.TestCase for pytest's!"""
    def test_bar(self):
        """
        This is just a trivial test to check the return value of function `bar`.
        """
        assert bar() == "cs107_package.subpkg_1.module_2.bar()"


def example_function():
    """If you have code that raises exceptions, pytest can verify them."""
    raise RuntimeError("This function should not be called")


def test_example_function():
    with pytest.raises(RuntimeError):
        example_function()
