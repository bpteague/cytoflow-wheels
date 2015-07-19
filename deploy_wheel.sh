#!/bin/bash
set -e

pip install twine

cat >~/.pypirc <<EOF
[distutils]
index-servers =
    pypi
    pypitest

[pypitest]
repository = https://testpypi.python.org/pypi

[pypi]
repository = https://pypi.python.org/pypi
EOF

cd cytoflow
echo $TWINE_USERNAME
echo $TWINE_PASSWORD
twine upload -r pypitest -u $TWINE_USERNAME -p $TWINE_PASSWORD dist/*.whl
