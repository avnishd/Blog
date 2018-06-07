from python:2

copy ./tests/* /tests/
copy ./README.rst ./
copy ./flaskr/* /flaskr/
copy ./setup.py ./

run pip install -e .
run pip install flask
run pip install pytest

ENV FLASK_APP flaskr
ENV FLASK_ENV development

cmd ["pytest", "-q /tests/test_auth.py"]
