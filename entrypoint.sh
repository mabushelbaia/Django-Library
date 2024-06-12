#!/bin/bash
python manage.py makemigrations --no-input
python manage.py migrate --no-input
python manage.py genbooks
python manage.py collectstatic --no-input

gunicorn django_project.wsgi:application --bind 0.0.0.0:8000