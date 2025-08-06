# #!/usr/bin/env bash
# set -o errexit

# pip install -r requirements.txt

# python manage.py collectstatic --no-input

# python manage.py migrate


#!/bin/bash

echo "Upgrading pip, setuptools, and wheel..."
pip install --upgrade pip setuptools wheel

echo "Installing dependencies..."
pip install -r requirements.txt

echo "Running migrations..."
python manage.py migrate

echo "Collecting static files..."
python manage.py collectstatic --noinput
