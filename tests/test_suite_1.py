"""
This test suit runs tests for subpkg_1 of the cs107_package.  The test structure
here is just an example, you are free to design your tests to your needs.
"""

import unittest

from cs107_package.subpkg_1 import (foo, bar)


class TestFooBar(unittest.TestCase):
    def test_foo(self):
        """
        This is just a trivial test to check the return value of `foo`
        """
        self.assertEqual(foo(), "cs107_package.subpkg_1.module_1.foo()")

    def test_bar(self):
        """
        This is just a trivial test to check the return value of `bar`
        """
        self.assertEqual(bar(), "cs107_package.subpkg_1.module_2.bar()")


def run_tests():
    unittest.main()


if __name__ == '__main__':
    run_tests()
