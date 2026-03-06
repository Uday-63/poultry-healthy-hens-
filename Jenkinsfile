pipeline {

agent any

stages {

stage('git checkout') {
steps {
git 'https://github.com/Uday-63/poultry-healthy-hens-.git'
}
}

stage('Build WAR File') {
steps {
sh 'jar -cvf healthy-hens.war *'
}
}

stage('Build Docker Image') {
steps {
sh 'docker build -t healthy-hens:latest .'
}
}

stage('Run Docker Container') {
steps {
sh '''
docker rm -f healthy-hens-container || true
docker run -d -p 2020:8080 --name healthy-hens-container healthy-hens:latest
'''
}
}

}

post {
success {
echo "✅ Application Deployed Successfully"
}
failure {
echo "❌ Pipeline Failed"
}
}

}
