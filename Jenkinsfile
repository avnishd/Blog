pipeline {
    agent none
    stages {
        stage('Test') {
            agent {
                docker {
                    image 'python:2'
                }
            }
            steps {
            		sh 'pip install '.[test]' '
            		sh 'pytest'
            }
        }
    }
}
