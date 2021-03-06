#!/bin/bash
# Before running this, go to setup.py and update the version # of the library

echo "Make sure to update the version number in setup.py!!! Pulling latest changes from origin/master..."
git pull origin master
rm -r dist/*
rm -r build/*
python setup.py sdist bdist_wheel
python -m twine upload dist/*
git add -A
git commit -m "updated PyPi version"
git push origin master
