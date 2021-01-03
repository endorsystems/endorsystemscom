#!/bin/bash
# TODO: work on collectstatic
cd /code/
python manage.py makemigrations polls
python manage.py makemigrations weather
python manage.py migrate

SECRET=`python -c 'from django.core.management.utils import get_random_secret_key; print(get_random_secret_key())'` && echo "SECRET_KEY = '$SECRET'" > /code/endorsystemscom/secrets.py && sed '/^$/d' -i /code/endorsystemscom/secrets.py

