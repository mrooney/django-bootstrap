#!/bin/bash
PROJECT=$1
echo "Bootstrapping $PROJECT..."
set -ex

virtualenv env
source env/bin/activate
pip install -r requirements.txt
django-admin.py startproject $PROJECT website

