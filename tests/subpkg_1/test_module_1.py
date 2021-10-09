"""
This test suite (a module) runs tests for subpkg_1.module_1 of the
cs107_package.
"""

# python standard library
import unittest

# project code
from cs107_package.subpkg_1.module_1 import *


class TestTypes(unittest.TestCase):
    def test_class_Foo(self):
        """
        This is just a trivial test to check that `Foo` is initialized
        correctly.  More tests associated to the class `Foo` could be written in
        this method.
        """
        f = Foo(1, 2)
        self.assertEqual(f.a, 1)
        self.assertEqual(f.b, 2)


class TestFunctions(unittest.TestCase):
    def test_function_foo(self):
        """
        This is just a trivial test to check the return value of function `foo`.
        """
        self.assertEqual(foo(), "cs107_package.subpkg_1.module_1.foo()")


if __name__ == '__main__':
    unittest.main()
