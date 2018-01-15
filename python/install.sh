#!/bin/bash
SCRIPT_DIR=$(cd $(dirname $0);pwd)

python -m venv $SCRIPT_DIR/ansible
source $SCRIPT_DIR/ansible/bin/activate
pip install -r $SCRIPT_DIR/requirements-setup.txt
pip freeze > $SCRIPT_DIR/requirements.txt
pip wheel -r $SCRIPT_DIR/requirements.txt -w $SCRIPT_DIR/pkgs
