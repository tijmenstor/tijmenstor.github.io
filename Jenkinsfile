pipeline {
    agent { node { label 'swarm-build-agent' } }
    
    stages {
        stage('Build') {
            sh 'docker build -t tijmen34/portfoliowebsite:lts'
        }
        stage('Push Image') {
            sh 'docker push tijmen34/portfoliowebsite:lts'
        }
        stage('Deploy') {
            sh 'docker service create --name=portfolio-website -d -p 5000:8080 --replicas=2 tijmen34/portfoliowebsite:lts'
        }
    }
}
