pipeline {
    agent none
    stages {
        stage('Test') {
            agent {
                docker {
                    image 'qnib/pytest'
                }
            }
            steps {
            		sh 'pytest --verbose --junit-xml test-reports/results.xml flaskr/test_auth.py'
            }
        }
    }
}
