pipeline {
    agent none
    stages {
        stage('Build') {
            agent {
                dockerfile {
                    filename 'Dockerfile'
                }
            }
            steps {
            		sh 'pip install .[tests]'
            		sh 'pytest'
            }
        }
    }
}
