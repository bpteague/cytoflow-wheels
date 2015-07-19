#!/bin/bash
set -e

pwd
ls

sudo pip install twine

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

echo user $TWINE_USERNAME
echo pwd $TWINE_PASSWORD
twine upload -r pypitest -u $TWINE_USERNAME -p $TWINE_PASSWORD *.whl

