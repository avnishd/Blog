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
            		sh 'flask init-db'
            }
        }
    }
}
