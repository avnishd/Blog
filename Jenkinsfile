pipeline {
    agent none
    stages {
        stage('Build') {
            agent {
                dockerfile {
                    filename Dockerfile
                    dir /blog/
                }
            }
            steps {
            		sh 'pip install ".[test]"'
            		sh 'pytest'
            }
        }
    }
}
