FROM python:3.13.2-bookworm

WORKDIR /app

# RUN apt-get update \
# && apt install -y \
#     vim \
# && rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*

COPY requirements.txt /app/
RUN pip install -r /app/requirements.txt

COPY . /app
RUN pip install -e .
