#pull base image
FROM python:3.8.10


#set environment variables
ENV PYTHONDONTWRITEBYTECODE 1
ENV PYTHONUNBUFFERED 1

#Set work directory
WORKDIR /dj_psql_docker

#install dependencies
COPY Pipfile Pipfile.lock /dj_psql_docker/
RUN pip install pipenv && pipenv install --system

#copy project
COPY . /dj_psql_docker