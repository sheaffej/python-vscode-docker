FROM python:3.8-buster

ENV PROJ python-vscode-docker

WORKDIR /workspaces/${PROJ}/src

COPY requirements.txt /workspaces/${PROJ}/
RUN pip install -r /workspaces/h${PROJ}/requirements.txt

COPY . /workspaces/${PROJ}

# EXPOSE 5000
# ENV FLASK_APP app
# ENV FLASK_RUN_PORT 5010
# ENV FLASK_ENV development