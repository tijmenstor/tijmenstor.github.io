node('swarm-build-agent') {
    def app
    
    stage('Build') {
        app = docker.build("tijmen34/portfoliowebsite")   
    }
    stage('Push Image') {
        docker.withRegistry('https://registry.hub.docker.com', 'tijmen34-dockerhub.creds') {
            app.push('$env.BUILD_NUMBER')
            app.push('lts')
        }
    }
    stage('Deploy') {
         sh 'docker service update --force portfolio-website'  
    }
}
