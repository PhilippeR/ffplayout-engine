#! /bin/bash

python_version=3
venv=venv

echo "Creating virtualenv"
virtualenv -p python${python_version} ${venv}
echo "Virtualenv created"

echo "Activating virtualenv"
. ${venv}/bin/activate
echo "Virtualenv activated"

function on_exit {
    deactivate
}

trap on_exit EXIT

pip install -r requirements.txt

echo "requirements installed"


