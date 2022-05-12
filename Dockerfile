FROM python:3.10-buster

WORKDIR /app

# RUN apt-get update \
# && apt install -y \
#     vim \
# && rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*

COPY requirements.txt /app/
RUN pip install -r /app/requirements.txt

COPY . /app
RUN pip install -e .

# EXPOSE 5000
# ENV FLASK_APP app
# ENV FLASK_RUN_PORT 5010
# ENV FLASK_ENV development
