from python:2

copy ./ /blog/
copy ./flaskr/ /blog/flaskr/
copy ./tests/ /blog/tests/

WORKDIR /blog/

run pip install -e .
run pip install flask
run pip install pytest

ENV FLASK_APP flaskr
ENV FLASK_ENV development


