FROM python:3.10.8-slim-buster
LABEL mainteiner="zp162162@gmail.com"

ENV PYTHONUNBUFFERED 1

WORKDIR app/

RUN apt-get update && apt-get -y install libpq-dev gcc

COPY requirements.txt requirements.txt

RUN pip install -r requirements.txt

COPY . .

RUN mkdir -p /vol/web/media

RUN adduser \
    --disabled-password \
    --no-create-home \
    django-user

RUN chown -R django-user:django-user /vol/
RUN chmod -R 755 /vol/web/

USER django-user
