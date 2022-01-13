FROM python:3

LABEL "com.github.actions.name"="YAPF Python Code Formatting Check"
LABEL "com.github.actions.description"="Run YAPF to check that your python code if correctly formatted."
LABEL "com.github.actions.icon"="check-circle"
LABEL "com.github.actions.color"="106a4e"
LABEL "repository"="https://github.com/joshua-drc/yapf-action"
LABEL "homepage"="https://github.com/joshua-drc/yapf-action"
LABEL "maintainer"="Joshua D'Arcy <joshua.d.arcy@ablacon.com>"

RUN pip install --upgrade pip
RUN pip install yapf toml

COPY entrypoint.sh /entrypoint.sh

ENTRYPOINT ["/entrypoint.sh"]
