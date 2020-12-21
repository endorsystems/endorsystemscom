#!/bin/bash

cd /code/

python manage.py collectstatic --noinput

python manage.py migrate

SECRET=`python -c 'from django.core.management.utils import get_random_secret_key; print(get_random_secret_key())'` && echo "SECRET_KEY = '$SECRET'" > /code/endorsystems/secrets.py && sed '/^$/d' -i /code/endorsystems/secrets.py