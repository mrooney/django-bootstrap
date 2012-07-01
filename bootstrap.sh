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
echo "move settings.py.template into place: put your secret key there and :%s/__PROJECT__/$PROJECT"

