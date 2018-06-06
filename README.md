# Blog app

## Introduction
This is the example [tutorial](http://flask.pocoo.org/docs/1.0/tutorial/) application for **Flask**. This application creates
a blog site (_flaskr_). You can check the README of this project in
`README.orig.rst`.

## Task
- Dockerise the application.
- Write a _Jenkinsfile_ using the [declarative pipeline syntax](https://jenkins.io/doc/book/pipeline/syntax/).
  - This includes running of unit tests.
- The pipeline must only use **Docker** containers to run the tests (should not
  be dependant on software on the host machine except for Docker).
- At the end of the pipeline, there should be a **Docker** image which is fully
  tested and can run the blog application.
- The layout of the _Jenkinsfile_ should look similar to [VAT IT Jenkins
  Guideline](http://vatit-devops-docs.s3-website-eu-west-1.amazonaws.com/jenkins/jenkins_guideline.html).

## Running the blog app
Steps to run the application:
1. Ensure that **Python 2.7** is installed.
2. `pip install -e .`
3. `export FLASK_APP flaskr`
4. `export FLASK_ENV development`
5. `flask init-db`
6. `flask run --host=0.0.0.0`

## Running the tests
1. `pip install '.[test]'`
2. `pytest`

## (Optional) Running Jenkins on your local machine
You can run **Jenkins** on your local machine to test what you have done so far.
- [Official Page](https://github.com/jenkinsci/docker/blob/master/README.md)
- [Using docker-compose](https://github.com/harryleesan/jenkins-docker)

