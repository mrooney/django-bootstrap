#!/bin/bash
PROJECT=$1
echo "Bootstrapping $PROJECT..."
set -ex

virtualenv env
source env/bin/activate
pip install -r requirements.txt

#cp $TWD/website/*.conf $NWD/website

echo "Done, now edit requirements.txt"
