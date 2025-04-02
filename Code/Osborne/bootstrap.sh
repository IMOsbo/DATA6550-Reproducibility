#!/bin/bash

# clone the repo
git clone https://github.com/openai/grok

# create a virtual environment
python -m venv grok-environment
# source the virtual environment
source grok-environment/bin/activate

# change into the repo
cd grok

# pull the pull request to a local branch
git fetch origin pull/41/head:dependency_fix 

# checkout that branch
git checkout dependency_fix

# run the suggested install instructions
pip install -e .
