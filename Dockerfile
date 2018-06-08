FROM python:2

copy ./ /blog/
copy ./flaskr/ /blog/flaskr/
copy ./tests/ /blog/tests/

WORKDIR /blog/

run pip install -e .
run pip install flask
run pip install pytest

ENV FLASK_APP flaskr
ENV FLASK_ENV development

CMD flask init-db
CMD flask run --host=0.0.0.0

