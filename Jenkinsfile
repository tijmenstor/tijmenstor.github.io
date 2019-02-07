pipeline {
    agent { node { label 'swarm-build-agent' } }
    
    stages {
        def app
        stage('Build') {
            app = docker.build("tijmen34/portfoliowebsite")
        }
        
        stage('Push Image') {
            docker.withRegistry('https://registry.hub.docker.com', 'tijmen34-dockerhub-creds') {
                app.push("$env.BUILD_NUMBER")
                app.push("lts")
            }
        }
        stage('Deploy') {
            sh 'docker service create --name=portfolio-website -d -p 5000:8080 --replicas=2 tijmen34/portfoliowebsite:lts'
        }
    }
}
