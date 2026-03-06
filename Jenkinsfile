pipeline {
    agent any

    stages {

        stage('Git Checkout') {
            steps {
                git branch: 'main', url: 'https://github.com/Uday-63/poultry-healthy-hens-.git'
            }
        }

        stage('Build WAR File') {
            steps {
                sh 'mvn clean package'
            }
        }

        stage('Build Docker Image') {
            steps {
                sh 'docker build -t healthy-hens .'
            }
        }

        stage('Run Docker Container') {
            steps {
                sh 'docker run -d -p 8080:80 healthy-hens'
            }
        }
    }

    post {
        failure {
            echo '❌ Pipeline Failed'
        }
        success {
            echo '✅ Pipeline Success'
        }
    }
}
