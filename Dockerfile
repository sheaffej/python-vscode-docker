FROM python:3.8-buster

ENV PROJ python-vscode-docker

WORKDIR /workspaces/${PROJ}

# RUN apt-get update \
# && apt install -y \
#     vim \
# && rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*

COPY requirements.txt /workspaces/${PROJ}/
RUN pip install -r /workspaces/${PROJ}/requirements.txt

COPY . /workspaces/${PROJ}
RUN pip install -e .

# EXPOSE 5000
# ENV FLASK_APP app
# ENV FLASK_RUN_PORT 5010
# ENV FLASK_ENV development
