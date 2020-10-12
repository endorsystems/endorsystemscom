FROM python:3
ENV PYTHONUNBUFFERED 1
RUN mkdir /code
WORKDIR /code
COPY requirements.txt /code/
RUN pip install -r requirements.txt
COPY . /code/
CMD SECRET=`python -c 'from django.core.management.utils import get_random_secret_key; print(get_random_secret_key())'` && echo "SECRET_KEY = '$SECRET'" > /code/endorsystems/secrets.py && sed '/^$/d' -i /code/endorsystems/secrets.py
RUN /usr/bin/python /code/manage.py runserver