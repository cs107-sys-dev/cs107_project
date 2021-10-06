# A simple python project for CS107 (Lecture 8)

Demonstration of PEP517 and PEP518 for package building and distribution.

See [https://packaging.python.org/tutorials/packaging-projects/](https://packaging.python.org/tutorials/packaging-projects/)

* Clean previous distributions: `rm dist/*`
* Build the package release: `python -m build`
* Upload to test.pypi.org: `twine upload --repository testpypi dist/*`
* Repo: [https://test.pypi.org/project/cs107-package/](https://test.pypi.org/project/cs107-package/)
