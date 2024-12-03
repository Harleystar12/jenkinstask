pipeline {
    agent any
    stages {
        stage('Cleanup') {
            steps {
                sh 'docker rm -f $(docker ps -aq) || true'
            }
        }
        stage('Build Image') {
            steps {
                    sh 'docker build -t Task1:latest .'
            }
        }
        stage('Run Container') {
            steps {
                sh 'docker run -d -p 80:5500 --name harleyCont task1:latest'
            }
        }
    }
}