#!/bin/bash
PROJECT=$1
echo "Bootstrapping $PROJECT..."
set -ex

virtualenv env
source env/bin/activate
pip install -r requirements.txt
django-admin.py startproject $PROJECT website
chmod +x website/manage.py

grep SECRET_KEY website/$PROJECT/settings.py | cut -c 14-
cp settings.py.template website/$PROJECT/settings.py
echo "website/$PROJECT/settings.py: put the above secret key there and :%s/__PROJECT__/$PROJECT"

