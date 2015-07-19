# cytoflow-wheels
This repository uses [Travis CI](https://travis-ci.org/) to create Python 
[wheel](http://wheel.readthedocs.org/en/latest/) packages for
[cytoflow](https://github.com/bpteague/cytoflow).  Most of this infrastructure
was copied gratefully from 
[scikit-image](https://github.com/jjhelmus/scikit-image-ci-wheel-builder/)
so as not to (heh) reinvent the wheel.

Instructions:

1. Fork this repository.
2. Replace the PyPI credentials the **deploy** section of the 
[.travis.yml](https://github.com/bpteague/cytoflow-wheels/blob/master/.travis.yml) 
file.  See the  [Travis Documentation](http://docs.travis-ci.com/user/deployment/pypi/) 
for details.
3. Create a new commit and push to GitHub.  Empty commits are fine.  Check that
Travis CI successfully built the wheel packages.  
[Example](https://travis-ci.org/bpteague/cytoflow-wheels/builds/yadayadayada)
4. Using the GitHub Web interface create a release, Travis CI will rerun the 
build and deloy the .whl files to the release when complete.  
[Example](https://travis-ci.org/jjhelmus/scikit-image-ci-wheel-builder/builds/28592876)


See the [Spinning wheels](https://github.com/MacPython/wiki/wiki/Spinning-wheels) 
page for additional details on using binary wheels on OS X.
