pipeline {
    agent any

    stages {

        stage('Stop Old Container') {
            steps {
                bat 'docker stop flask-container || exit 0'
                bat 'docker rm flask-container || exit 0'
            }
        }

        stage('Build Docker Image') {
            steps {
                bat 'docker build -t flask-app .'
            }
        }

        stage('Run Container') {
            steps {
                bat 'docker run -d --name flask-container -p 5001:5000 flask-app'
            }
        }
    }
}