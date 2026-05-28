pipeline {
    agent any
    stages {
        stage('Clone') {
            steps {
                git 'https://github.com/Teju-hub/food-delivery-devops.git'

            }
        }
        stage('Build docker Image') {
            steps {
               sh 'docker build -t food-delivery:latest .'
            }
        }
        stage('Run Container') {
            steps {
                sh 'docker stop food-app || true'
                sh 'docker rm food-app || true'
                sh 'docker run -d -p 80:80 --name food-app food-delivery:latest'
            }
        }
    }
}