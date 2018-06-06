pipeline {
    agent none
    stages {
        stage('Build') {
            agent {
                docker {
                    image 'python:2-alpine'
                }
            }
            steps {
                sh 'python -m py_compile flaskr/auth.py'
            }
        }
        stage('Test') {
            agent {
                docker {
                    image 'qnib/pytest'
                }
            }
            steps {
            		sh 'pip install -r ./requirements.txt'
            		sh 'py.test --verbose --junit-xml test-reports/results.xml flaskr/test_auth.py'
            }
        }
    }
}
