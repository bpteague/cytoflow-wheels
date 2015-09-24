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

#if [ -z "${TRAVIS_TAG}" ]
#then
#    echo "Not a tagged release; no upload."
#else
twine upload -r pypi -u $TWINE_USERNAME -p $TWINE_PASSWORD *.whl
#fi
