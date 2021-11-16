[![main action](https://github.com/cs107-sys-dev/cs107_project/actions/workflows/main.yml)](https://github.com/cs107-sys-dev/cs107_project/actions/workflows/main.yml/badge.svg)
[![codecov](https://codecov.io/gh/cs107-sys-dev/cs107_project/branch/master/graph/badge.svg?token=E00DHWLP24)](https://codecov.io/gh/cs107-sys-dev/cs107_project)
[![Documentation Status](https://readthedocs.org/projects/cs107-project/badge/?version=latest)](https://cs107-project.readthedocs.io/en/latest/?badge=latest)

# A simple python project for CS107 (Lecture 8)

Demonstration of PEP517 and PEP518 for package building and distribution.

See [https://packaging.python.org/tutorials/packaging-projects/](https://packaging.python.org/tutorials/packaging-projects/)

* Clean previous distributions: `rm dist/*`
* Build the package release: `python -m build`
* Upload to test.pypi.org: `twine upload --repository testpypi dist/*`
* Repo: [https://test.pypi.org/project/cs107-package/](https://test.pypi.org/project/cs107-package/)
